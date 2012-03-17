.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;
.super Ljava/lang/Object;
.source "SettingsResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$DummyStrings;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;
    }
.end annotation


# static fields
.field public static final KIND_ICON_HIGH_ID:I = 0x2

.field public static final KIND_ICON_ID:I = 0x1

.field public static final KIND_ICON_VF_ID:I = 0x3

.field public static final KIND_TEXT_ID:I = 0x0

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final RESOURCE_HIGHLIGHTED:I = 0x7f02004c

.field public static final RESOURCE_HIGHLIGHTED_SQUARE:I = 0x7f02004d

.field public static final RESOURCE_PRESSED:I = 0x7f02004f

.field public static final RESOURCE_PRESSED_SQUARE:I = 0x7f020050

.field public static final TEXTSIZE_BUTTON:F = 14.0f

.field public static final TEXTSIZE_DIALOG_TITLE:F = 14.0f

.field private static final sCategoryResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static final sValueResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x7f0c0106

    const v8, 0x7f0c0103

    const v7, 0x7f0c0010

    const v6, 0x7f0c000f

    const/4 v5, -0x1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    .line 202
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D_STANDARD"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0098

    const v4, 0x7f020016

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D_16_BY_9"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0097

    const v4, 0x7f020015

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "PHOTOLIGHT_ON"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f02005d

    invoke-direct {v2, v6, v3, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "PHOTOLIGHT_OFF"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f02005c

    invoke-direct {v2, v7, v3, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "LEFT_2_RIGHT"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c009b

    const v4, 0x7f020028

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "RIGHT_2_LEFT"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c009c

    const v4, 0x7f020027

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "BOTTOM_2_TOP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c009d

    const v4, 0x7f020029

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "TOP_2_BOTTOM"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c009e

    const v4, 0x7f020026

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "VIEW_FINDER"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f020093

    invoke-direct {v2, v6, v5, v5, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    const-string v1, "OFF"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    invoke-direct {v2, v7, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0116

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    invoke-direct {v2, v8, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0109

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    invoke-direct {v2, v9, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0107

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010d

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010e

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0108

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010f

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0111

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010c

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0110

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0117

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0114

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    invoke-direct {v2, v8, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0109

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    invoke-direct {v2, v9, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0107

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010d

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010e

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0111

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0115

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c010c

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    const v3, 0x7f0c0110

    invoke-direct {v2, v3, v5, v5, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getCategoryResourceId(Ljava/lang/Object;I)I
    .locals 1
    .parameter "key"
    .parameter "kind"

    .prologue
    .line 129
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sCategoryResources:Ljava/util/HashMap;

    invoke-static {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getResourceId(Ljava/util/HashMap;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getDrawableResourceId(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getValueResourceId(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getHighlightedResourceId(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getValueResourceId(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getResourceId(Ljava/util/HashMap;Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "key"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;",
            ">;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;>;"
    const/4 v0, -0x1

    .line 96
    .local v0, resId:I
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return v0

    .line 100
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    iget v0, v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mTextId:I

    .line 103
    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    iget v0, v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mIconId:I

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    iget v0, v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mIconHighId:I

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;

    iget v0, v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources$Resources;->mIconVfId:I

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getValueResourceId(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "value_org"
    .parameter "kind"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, value:Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v0, "WHITE_BALANCE_AUTO"

    .line 151
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    const-string v0, "FLASH_MODE_AUTO"

    .line 162
    :cond_2
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    const-string v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const-string v0, "SCENE_NIGHT_MODE"

    .line 167
    :cond_3
    if-nez v0, :cond_4

    .line 168
    move-object v0, p1

    .line 170
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->sValueResources:Ljava/util/HashMap;

    invoke-static {v1, v0, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getResourceId(Ljava/util/HashMap;Ljava/lang/Object;I)I

    move-result v1

    return v1

    .line 154
    :cond_5
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    const-string v0, "FLASH_MODE_ON"

    goto :goto_0

    .line 156
    :cond_6
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    const-string v0, "FLASH_MODE_OFF"

    goto :goto_0

    .line 158
    :cond_7
    const-string v1, "red-eye"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    const-string v0, "FLASH_MODE_RED_EYE"

    goto :goto_0
.end method

.method public static getValueTextResourceId(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getValueResourceId(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVfResourceId(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getValueResourceId(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
