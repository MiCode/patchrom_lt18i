.class public Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore$Images$Clustering;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clustering"
.end annotation


# static fields
.field public static final CLUSTERING_ID:Ljava/lang/String; = "clustering_id"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 915
    const-string v0, "content://media/external/images/clustering"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$MediaStore$Images$Clustering;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
