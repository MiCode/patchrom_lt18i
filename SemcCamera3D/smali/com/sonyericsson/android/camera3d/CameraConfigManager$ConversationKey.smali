.class Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationKey"
.end annotation


# instance fields
.field public mColunm:Ljava/lang/String;

.field public mDefaultValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "col"
    .parameter "value"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;->mColunm:Ljava/lang/String;

    .line 263
    iput-wide p2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;->mDefaultValue:J

    .line 264
    return-void
.end method
