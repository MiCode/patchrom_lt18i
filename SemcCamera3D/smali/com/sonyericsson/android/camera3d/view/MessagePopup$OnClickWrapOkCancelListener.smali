.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnClickWrapOkCancelListener"
.end annotation


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 210
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->enableAutoOffTimer()V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$202(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 218
    return-void
.end method
