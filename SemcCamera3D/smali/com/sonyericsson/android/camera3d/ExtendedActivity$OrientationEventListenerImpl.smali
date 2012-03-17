.class Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 667
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 668
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "rate"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 671
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 672
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    iput p1, v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mRotationDegree:I

    .line 678
    return-void
.end method
