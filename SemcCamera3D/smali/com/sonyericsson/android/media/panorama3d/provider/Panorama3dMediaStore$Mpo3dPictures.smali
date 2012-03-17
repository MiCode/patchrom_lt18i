.class public final Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;
.super Ljava/lang/Object;
.source "Panorama3dMediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mpo3dPictures"
.end annotation


# static fields
.field public static final BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.sonyericsson.android.media.panorama3d.provider.mpo_3d_picture"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.sonyericsson.android.media.panorama3d.provider.mpo_3d_picture"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MINI_THUMB_MAGIC:Ljava/lang/String; = "mini_thumb_magic"

.field public static final MPO_MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final TABLE_NAME:Ljava/lang/String; = "mpo_3d_pictures"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_3D:Ljava/lang/String; = "3D"

.field public static final TYPE_MA:Ljava/lang/String; = "MA"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "content://com.sonyericsson.android.media.panorama3d.provider/mpo_3d_pictures"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method
