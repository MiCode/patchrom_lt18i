.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;
.super Ljava/lang/Object;
.source "SettingsResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resources"
.end annotation


# instance fields
.field public mIconHighId:I

.field public mIconId:I

.field public mIconVfId:I

.field public mTextId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "text"
    .parameter "icon"
    .parameter "iconHigh"
    .parameter "iconVf"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mTextId:I

    .line 51
    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mIconId:I

    .line 52
    iput p3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mIconHighId:I

    .line 53
    iput p4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mIconVfId:I

    .line 54
    return-void
.end method
