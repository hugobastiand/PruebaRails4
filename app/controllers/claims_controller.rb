class ClaimsController < ApplicationController
  def create
  	@company = Company.find(params[:company_id])
  	@claim = @company.claims.build(claims_params, user_id: current_user.id)
    #@comment.user_id = current_user.id
  	if @claim.save
  		redirect_to @company, notice: "el reclamo se a creado satisfactoriamente"
  	else
  		redirect_to @company, alert: "el reclamo no ha podido ser creado"	
  	end	
  end

  private
	  def claims_params
	  	params.require(:claim).permit(:claim)
	  end

end
