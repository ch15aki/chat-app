class UsersController < ApplicationController
    #ユーザー編集のビューファイルを表示する
    def edit
    end

    #編集内容の更新
    def update
        if current_user.update(user_params)
            #更新に成功するとチャット画面に遷移する
            redirect_to root_path
        else
            # 更新に失敗するとeditページに戻ってくる
            render action: :edit
        end

    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
end
