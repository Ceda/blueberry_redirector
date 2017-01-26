module BlueberryRedirector
  class RedirectorRulesImportsController < RedirectorRulesController
    def new
      render :new_import
    end

    def create
      ImportRedirectRules.run redirector_rule_params
      redirect_to redirector_rules_path, notice: t('.success')

    rescue ImportRedirectRules::ValidationError
      flash[:notice] = t('.wrong_format')
      render :new_import
    end

    private

    def redirector_rule_params
      params.require(:redirector_rule)
    end
  end
end
