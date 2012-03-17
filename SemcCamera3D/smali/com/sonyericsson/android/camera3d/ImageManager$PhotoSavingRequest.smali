.class Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoSavingRequest"
.end annotation


# instance fields
.field public mImage:[B

.field public mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;-><init>()V

    return-void
.end method
