module BlueberryRedirector
  class RedirectorRulesController < ApplicationController
    before_action :find_redirector_rule, only: [:edit, :update, :destroy]

    def index
      @redirector_rules = RedirectorRule.all
    end

    def new
      @redirector_rule = RedirectorRule.new
    end

    def create
      @redirector_rule = RedirectorRule.new redirector_rule_params
      if @redirector_rule.save
        redirect_to redirector_rules_path, notice: t('.success')
      else
        render :new
      end
    end

    def edit; end

    def update
      if @redirector_rule.update_attributes redirector_rule_params
        redirect_to redirector_rules_path, notice: t('.success')
      else
        render :edit
      end
    end

    def destroy
      @redirector_rule.destroy
      redirect_to redirector_rules_path, notice: t('.success')
    end

    private

    def find_redirector_rule
      @redirector_rule = RedirectorRule.find params[:id]
    end

    def redirector_rule_params
      params.require(:redirector_rule)
            .permit(:source, :destination, :active, :source_is_regex,
                    :source_is_case_sensitive)
    end
  end
end
