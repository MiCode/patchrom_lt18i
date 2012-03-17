.class public Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;
.super Ljava/lang/Object;
.source "Panorama3dMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;,
        Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;
    }
.end annotation


# static fields
.field public static final ACTION_SCAN_FILE:Ljava/lang/String; = "com.sonyericsson.android.media.panorama3d.provider.SCAN_FILE"

.field public static final ACTION_SCAN_FINISHED:Ljava/lang/String; = "com.sonyericsson.android.media.panorama3d.provider.SCAN_FINISHED"

.field public static final ACTION_SCAN_MEDIA:Ljava/lang/String; = "com.sonyericsson.android.media.panorama3d.provider.SCAN_MEDIA"

.field public static final ACTION_SCAN_STARTED:Ljava/lang/String; = "com.sonyericsson.android.media.panorama3d.provider.SCAN_STARTED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.android.media.panorama3d.provider"

.field public static final CONTENT_AUTHORITY:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "mpo_pictures"

.field private static final TAG:Ljava/lang/String; = "Panorama3dMediaStore"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "content://com.sonyericsson.android.media.panorama3d.provider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;->CONTENT_AUTHORITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method
