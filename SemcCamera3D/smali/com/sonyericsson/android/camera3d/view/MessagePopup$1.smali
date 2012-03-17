.class Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showMessageOnUiThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

.field final synthetic val$duration:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->val$resId:I

    iput p3, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$600(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$600(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->val$resId:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->val$duration:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    #setter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$602(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$600(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    return-void
.end method
