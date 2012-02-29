.class public Landroid/drm/DrmEvent;
.super Ljava/lang/Object;
.source "DrmEvent.java"


# static fields
.field public static final DRM_INFO_OBJECT:Ljava/lang/String; = "drm_info_object"

.field public static final DRM_INFO_STATUS_OBJECT:Ljava/lang/String; = "drm_info_status_object"

.field public static final TYPE_ALL_RIGHTS_REMOVED:I = 0x3ee

.field public static final TYPE_DRM_INFO_ACQUIRED:I = 0x3ef

.field public static final TYPE_FINALIZED:I = 0x3e9

.field public static final TYPE_INITIALIZED:I = 0x3eb

.field public static final TYPE_REGISTERED:I = 0x3ea

.field public static final TYPE_RIGHTS_ACQUIRED:I = 0x3ed

.field public static final TYPE_UNREGISTERED:I = 0x3ec


# instance fields
.field private mMessage:Ljava/lang/String;

.field private final mType:I

.field private final mUniqueId:I


# direct methods
.method protected constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "uniqueId"
    .parameter "type"
    .parameter "message"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 75
    iput p1, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    .line 76
    iput p2, p0, Landroid/drm/DrmEvent;->mType:I

    .line 78
    if-eqz p3, :cond_0

    .line 79
    iput-object p3, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/drm/DrmEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/drm/DrmEvent;->mType:I

    return v0
.end method

.method public getUniqueId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/drm/DrmEvent;->mUniqueId:I

    return v0
.end method
