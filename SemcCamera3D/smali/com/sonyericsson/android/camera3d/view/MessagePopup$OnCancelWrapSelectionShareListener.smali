.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCancelWrapSelectionShareListener"
.end annotation


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 315
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 316
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->enableAutoOffTimer()V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$402(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 324
    return-void
.end method
