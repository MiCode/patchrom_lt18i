.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "DrmInfoStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final data:Landroid/drm/ProcessedData;

.field public final mimeType:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(ILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 0
    .parameter "_statusCode"
    .parameter "_data"
    .parameter "_mimeType"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 50
    iput-object p2, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 51
    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    .line 52
    return-void
.end method
