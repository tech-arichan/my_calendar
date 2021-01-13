class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def create
    memo = Memo.create(memo: params[:memo])
    render json:{ memo: memo }
    # if @memo.save
    #   redirect_to memos_path
    # else
    #   flash[:alert] = "※文字を入力してください"
    #   redirect_to memos_path
    # end
end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to memos_path
  end
  
  # private

  # def memo_params
  #   params.require(:memo).permit(:memo)
  # end
end
