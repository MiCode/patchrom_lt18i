.class public Lcom/sonyericsson/android/camera/photostack/QueryParameterAdapter;
.super Ljava/lang/Object;
.source "QueryParameterAdapter.java"


# static fields
.field public static final MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MPO_3DPICTURES_DATA:Ljava/lang/String; = "_data"

.field public static final MPO_3DPICTURES_DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field public static final MPO_3DPICTURES_ID:Ljava/lang/String; = "_id"

.field public static final MPO_3DPICTURES_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MPO_3DPICTURES_MINI_THUMB_MAGIC:Ljava/lang/String; = "mini_thumb_magic"

.field public static final MPO_3DPICTURES_TYPE:Ljava/lang/String; = "type"

.field public static final MPO_THUMB_MICRO_KIND:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0, p4}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
