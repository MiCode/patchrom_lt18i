.class Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;
.super Landroid/os/AsyncTask;
.source "SetBackupQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetBackupQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveQuestionAnswerPairTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetBackupQuestion;


# direct methods
.method private constructor <init>(Lcom/android/settings/SetBackupQuestion;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->this$0:Lcom/android/settings/SetBackupQuestion;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SetBackupQuestion;Lcom/android/settings/SetBackupQuestion$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;-><init>(Lcom/android/settings/SetBackupQuestion;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "arg"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->this$0:Lcom/android/settings/SetBackupQuestion;

    #getter for: Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;
    invoke-static {v0}, Lcom/android/settings/SetBackupQuestion;->access$400(Lcom/android/settings/SetBackupQuestion;)Lcom/android/internal/widget/BackupQuestionUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->this$0:Lcom/android/settings/SetBackupQuestion;

    #getter for: Lcom/android/settings/SetBackupQuestion;->mQuestion:I
    invoke-static {v1}, Lcom/android/settings/SetBackupQuestion;->access$200(Lcom/android/settings/SetBackupQuestion;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->this$0:Lcom/android/settings/SetBackupQuestion;

    #getter for: Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/SetBackupQuestion;->access$300(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/BackupQuestionUtils;->saveQuestionAnswerPair(ILjava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->this$0:Lcom/android/settings/SetBackupQuestion;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->this$0:Lcom/android/settings/SetBackupQuestion;

    invoke-virtual {v0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 264
    return-void
.end method
