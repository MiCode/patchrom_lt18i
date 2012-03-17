.class public final Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;
.super Ljava/lang/Object;
.source "CrUpdateParameter.java"


# instance fields
.field public selectionArgs:[Ljava/lang/String;

.field public values:Landroid/content/ContentValues;

.field public where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->values:Landroid/content/ContentValues;

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->where:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->values:Landroid/content/ContentValues;

    .line 47
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->where:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    .line 49
    return-void
.end method
