.class Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contents3dUris"
.end annotation


# instance fields
.field public final mJpgUri:Landroid/net/Uri;

.field public final mMpoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "mpoUri"
    .parameter "jpgUri"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;->mMpoUri:Landroid/net/Uri;

    .line 271
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;->mJpgUri:Landroid/net/Uri;

    .line 272
    return-void
.end method
