.class public abstract Lmiui/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 16
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->init(Landroid/app/ProgressDialog;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "cancelable"

    .prologue
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p2, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    if-nez p3, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 25
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 26
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 27
    invoke-direct {p0, v0}, Lmiui/os/AsyncTaskWithProgress;->init(Landroid/app/ProgressDialog;)V

    .line 28
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init(Landroid/app/ProgressDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 31
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    .line 33
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lmiui/os/AsyncTaskWithProgress$1;

    invoke-direct {v1, p0}, Lmiui/os/AsyncTaskWithProgress$1;-><init>(Lmiui/os/AsyncTaskWithProgress;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    .line 61
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 62
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-direct {p0}, Lmiui/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 57
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 52
    :cond_0
    return-void
.end method

.method public setDialogType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 44
    .local p0, this:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/os/AsyncTaskWithProgress;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 47
    :cond_0
    return-void
.end method
