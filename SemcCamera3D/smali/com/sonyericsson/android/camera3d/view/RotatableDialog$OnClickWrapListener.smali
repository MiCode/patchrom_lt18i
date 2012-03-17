.class Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickWrapListener"
.end annotation


# instance fields
.field private mDialog:Landroid/content/DialogInterface;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mWhich:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;Landroid/content/DialogInterface;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 1
    .parameter
    .parameter "dialog"
    .parameter "listener"
    .parameter "which"

    .prologue
    const/4 v0, 0x0

    .line 416
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 411
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mDialog:Landroid/content/DialogInterface;

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mWhich:I

    .line 417
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 418
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mDialog:Landroid/content/DialogInterface;

    .line 419
    iput p4, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mWhich:I

    .line 420
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mDialog:Landroid/content/DialogInterface;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mWhich:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #getter for: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$500(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    #getter for: Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->access$500(Lcom/sonyericsson/android/camera3d/view/RotatableDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/RotatableDialog$OnClickWrapListener;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 431
    return-void
.end method
