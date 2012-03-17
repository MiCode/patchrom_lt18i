.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOkListener"
.end annotation


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter
    .parameter "ok"
    .parameter "dismiss"

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 246
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 249
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 250
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 251
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$302(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 259
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$302(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 267
    return-void
.end method
