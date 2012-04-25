.class synthetic Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;
.super Ljava/lang/Object;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$ContentMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$SecurityLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 874
    invoke-static {}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->values()[Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$ContentMode:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$ContentMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PHOTO_VIDEO:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$ContentMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->MULTI_ANGLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$ContentMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PANORAMA_3D:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    :goto_2
    invoke-static {}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->values()[Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$SecurityLevel:[I

    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$SecurityLevel:[I

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    .line 874
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
