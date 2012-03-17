.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;
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
    name = "OnClickWrapListener"
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
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 192
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 199
    :cond_0
    return-void
.end method
