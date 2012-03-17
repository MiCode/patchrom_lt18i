.class Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$3;
.super Ljava/lang/Object;
.source "ReviewIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setActionListener(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mActionListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;->onPlay(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    .line 105
    return-void
.end method
