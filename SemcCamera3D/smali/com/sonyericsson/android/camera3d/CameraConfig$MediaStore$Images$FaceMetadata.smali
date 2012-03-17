.class public Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore$Images$FaceMetadata;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceMetadata"
.end annotation


# static fields
.field public static final CLUSTERING_ID:Ljava/lang/String; = "clustering_id"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final POSITION_X:Ljava/lang/String; = "pos_x"

.field public static final POSITION_Y:Ljava/lang/String; = "pos_y"

.field public static final SIZE_HEIGHT:Ljava/lang/String; = "hight"

.field public static final SIZE_WIDTH:Ljava/lang/String; = "width"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 904
    const-string v0, "content://media/external/images/faces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore$Images$FaceMetadata;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
