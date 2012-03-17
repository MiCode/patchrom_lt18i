.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;
.super Ljava/lang/Object;
.source "CameraWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogTextInfo"
.end annotation


# instance fields
.field public final mMessageId:I

.field public final mTitleId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "messageId"
    .parameter "titleId"

    .prologue
    .line 2165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2166
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;->mMessageId:I

    .line 2167
    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;->mTitleId:I

    .line 2168
    return-void
.end method
