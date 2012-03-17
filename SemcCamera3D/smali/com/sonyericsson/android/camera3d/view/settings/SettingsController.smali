.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnFocusChangeListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnTouchListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    }
.end annotation


# static fields
.field private static final DIALOG_TYPE_CAMERA_MODE:I = 0x6

.field private static final DIALOG_TYPE_CAPTURING_MODE:I = 0x1

.field private static final DIALOG_TYPE_EV:I = 0x3

.field private static final DIALOG_TYPE_GEOTAG:I = 0x2

.field private static final DIALOG_TYPE_NORMAL:I = 0x0

.field private static final DIALOG_TYPE_RESET:I = 0x5

.field private static final DIALOG_TYPE_WHITE_BALANCE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final INDEX_OF_RESET_SETTINGS_CAMERA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDEX_OF_RESET_SETTINGS_VIDEO:I = 0x0

.field public static final NUMBER_OF_ADVANCED:I = 0x0

.field public static final NUMBER_OF_QUICK:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SettingsController"

.field private static final sDropPositionLandX:[I

.field private static final sDropPositionLandY:[I

.field private static final sDropPositionPortX:[I

.field private static final sDropPositionPortY:[I

.field public static final sIsSettingsCustomizationIn:Z


# instance fields
.field private mBaseView:Landroid/widget/RelativeLayout;

.field private mCameraOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field private mCameraOrderInDragging:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field private mCameraOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

.field private mCategoryListener:Landroid/view/View$OnTouchListener;

.field private mCategoryModificationListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;

.field private mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

.field private mDialogCategory:Ljava/lang/Object;

.field private mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

.field private mDialogValue:Ljava/lang/String;

.field private mDisplayedCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

.field private mDownMotion:Landroid/view/MotionEvent;

.field private mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

.field private mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasLongPressed:Z

.field private mIsDialogOpen:Z

.field private mLongPressedX:F

.field private mLongPressedY:F

.field private mMode:I

.field private mOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field private mOrientation:I

.field private mStateListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;

.field private mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

.field private mValueChanged:Z

.field private mVideoOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field private mVideoOrderInDragging:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field private mVideoOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 122
    sget v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_CAMERA_SETTINGS_ARRAY:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->INDEX_OF_RESET_SETTINGS_CAMERA:I

    .line 127
    sget v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_VIDEO_SETTINGS_ARRAY:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->INDEX_OF_RESET_SETTINGS_VIDEO:I

    .line 209
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionLandX:[I

    .line 210
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionLandY:[I

    .line 211
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionPortX:[I

    .line 212
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionPortY:[I

    return-void

    .line 209
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xbt 0x2t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
    .end array-data

    .line 210
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
    .end array-data

    .line 211
    :array_2
    .array-data 0x4
        0xe0t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 212
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x1et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 6
    .parameter "settingsDialogBase"
    .parameter "settingsCategory"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 104
    sget v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_CAMERA_SETTINGS_ARRAY:I

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 108
    sget v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_VIDEO_SETTINGS_ARRAY:I

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 112
    sget v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_CAMERA_SETTINGS_ARRAY:I

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderInDragging:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 116
    sget v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_VIDEO_SETTINGS_ARRAY:I

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderInDragging:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 155
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategoryListener:Landroid/view/View$OnTouchListener;

    .line 158
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    .line 167
    iput v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    .line 170
    iput v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mOrientation:I

    .line 197
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;->ADVANCED_FULL:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDisplayedCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

    .line 225
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    .line 227
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setupBaseView(Landroid/view/ViewGroup;)V

    .line 230
    invoke-virtual {p0, p2, v2, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCategory(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 231
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->createDialog()V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setListener(Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;)V

    .line 241
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedX:F

    return p1
.end method

.method static synthetic access$1202(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedY:F

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->startDragging(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->createDummyEvent()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->dragButton(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertPositionToDisplayedOrder(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertDisplayedOrderToIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->changeOrder(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideButton(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertIndexToDisplayedOrder(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->dropButton(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->resetCameraOrder()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    return-object v0
.end method

.method private addDialog(ILandroid/view/View;)V
    .locals 2
    .parameter "type"
    .parameter "dialog"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 590
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 591
    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->setDialogListener(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;)V

    .line 592
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->addView(Landroid/view/View;)V

    .line 596
    return-void
.end method

.method private addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 452
    return-void
.end method

.method public static alreadySet(Lcom/sonyericsson/android/camera3d/CameraConfigManager;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "config"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, same:Z
    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, current:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    const/4 v1, 0x1

    .line 349
    .end local v0           #current:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 345
    .restart local v0       #current:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private applyOrder(I[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter "mode"
    .parameter "targetOrderArray"
    .parameter "sourceOrderArray"

    .prologue
    .line 1392
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1393
    monitor-enter p0

    .line 1394
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 1395
    monitor-exit p0

    .line 1396
    return-void

    .line 1395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelOpenDialog()V
    .locals 3

    .prologue
    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    .line 719
    .local v0, keys:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 720
    monitor-exit p0

    .line 721
    return-void

    .line 720
    .end local v0           #keys:[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized changeOrder(III)Z
    .locals 8
    .parameter "original_order"
    .parameter "previous_order"
    .parameter "new_order"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1406
    monitor-enter p0

    if-ne p2, p3, :cond_1

    .line 1434
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 1409
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 1414
    :try_start_0
    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    .line 1415
    .local v0, dragging:[Ljava/lang/Object;
    aget-object v4, v0, p2

    .line 1416
    .local v4, target:Ljava/lang/Object;
    aget-object v2, v0, p3

    .line 1417
    .local v2, latest:Ljava/lang/Object;
    aput-object v4, v0, p3

    .line 1420
    aput-object v2, v0, p1

    .line 1423
    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v3

    .line 1424
    .local v3, original:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 1428
    if-eq v1, p3, :cond_2

    if-ne v1, p1, :cond_3

    :cond_2
    if-ne p3, p1, :cond_4

    .line 1430
    :cond_3
    aget-object v5, v3, v1

    aput-object v5, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    .line 1434
    goto :goto_0

    .line 1406
    .end local v0           #dragging:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #latest:Ljava/lang/Object;
    .end local v3           #original:[Ljava/lang/Object;
    .end local v4           #target:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static clearButtonList(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 995
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->release()V

    goto :goto_0

    .line 999
    .end local v0           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 1000
    return-void
.end method

.method public static clearButtonPressed(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 980
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonBackground(Landroid/view/View;I)V

    .line 981
    return-void
.end method

.method private clearFocus()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 460
    return-void
.end method

.method private clearOrderMap()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1252
    :cond_1
    return-void
.end method

.method private convertDisplayedOrderToIndex(I)I
    .locals 2
    .parameter "positionOrder"

    .prologue
    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, tag:Ljava/lang/Object;
    if-gez p1, :cond_1

    .line 1559
    .end local v0           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertTagToIndex(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 1556
    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getButton(I)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private convertIndexToDisplayedOrder(I)I
    .locals 4
    .parameter "itemOder"

    .prologue
    .line 1565
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 1566
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getButton(I)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v2

    .line 1567
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertTagToIndex(Ljava/lang/Object;)I

    move-result v0

    .line 1568
    .local v0, cmpOrder:I
    if-ne p1, v0, :cond_0

    .line 1573
    .end local v0           #cmpOrder:I
    .end local v1           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return v1

    .line 1565
    .restart local v0       #cmpOrder:I
    .restart local v1       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1573
    .end local v0           #cmpOrder:I
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private convertPositionToDisplayedOrder(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "motion"

    .prologue
    .line 1438
    const/4 v0, -0x1

    .line 1439
    .local v0, order_new:I
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderLandscape(II)I

    move-result v0

    .line 1448
    :goto_0
    if-gez v0, :cond_0

    .line 1449
    const/4 v0, -0x1

    .line 1453
    :cond_0
    return v0

    .line 1443
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderPortrait(II)I

    move-result v0

    goto :goto_0
.end method

.method private convertTagToIndex(Ljava/lang/Object;)I
    .locals 2
    .parameter "tag"

    .prologue
    .line 1577
    const/4 v0, -0x1

    .line 1578
    .local v0, key:I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1579
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1581
    :cond_0
    return v0
.end method

.method private copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .parameter "target"
    .parameter "source"

    .prologue
    .line 1371
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1372
    aget-object v1, p2, v0

    aput-object v1, p1, v0

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1376
    :cond_0
    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    .line 579
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 580
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->addDialog(ILandroid/view/View;)V

    .line 582
    return-void
.end method

.method private createDummyEvent()Landroid/view/MotionEvent;
    .locals 3

    .prologue
    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, motion:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1313
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-eqz v1, :cond_1

    .line 1314
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1318
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1325
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    .line 1326
    return-object v0

    .line 1316
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method

.method private declared-synchronized dragButton(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "motion"

    .prologue
    .line 1828
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->move(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    monitor-exit p0

    return-void

    .line 1828
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dropButton(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "motion"

    .prologue
    .line 1833
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->remove()V

    .line 1834
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    .line 1837
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 1840
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v1

    .line 1841
    .local v1, dragging:[Ljava/lang/Object;
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v2

    .line 1842
    .local v2, order:[Ljava/lang/Object;
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1845
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, capturingMode:Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FRONT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1848
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    const-string v5, "FRONT"

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    check-cast v3, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    monitor-exit p0

    return-void

    .line 1851
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    check-cast v3, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1833
    .end local v0           #capturingMode:Ljava/lang/String;
    .end local v1           #dragging:[Ljava/lang/Object;
    .end local v2           #order:[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .locals 2
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1861
    const-string v1, "FRONT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1862
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sCameraDefaultOrderFront:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1882
    .local v0, settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :goto_0
    return-object v0

    .line 1873
    .end local v0           #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :cond_0
    const-string v1, "SCENE_RECOGNITION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1874
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontCameraDefaultOrderScene:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .restart local v0       #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    goto :goto_0

    .line 1875
    .end local v0           #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :cond_1
    const-string v1, "SMILE_DETECTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1876
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontCameraDefaultOrderSmile:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .restart local v0       #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    goto :goto_0

    .line 1878
    .end local v0           #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontCameraDefaultOrderNormal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .restart local v0       #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    goto :goto_0
.end method

.method private getDialog(Ljava/lang/Object;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    .locals 3
    .parameter "key"

    .prologue
    .line 601
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .line 621
    .local v0, dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :goto_0
    return-object v0

    .line 604
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .restart local v0       #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    goto :goto_0

    .line 607
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 608
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .restart local v0       #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    goto :goto_0

    .line 609
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 611
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .restart local v0       #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    goto :goto_0

    .line 612
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_6
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 614
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .restart local v0       #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    goto :goto_0

    .line 615
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_8
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 617
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .restart local v0       #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    goto :goto_0

    .line 619
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .restart local v0       #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    goto/16 :goto_0
.end method

.method private getOrderLandscape(II)I
    .locals 6
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v5, 0x0

    .line 1459
    sget-object v4, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionLandX:[I

    invoke-direct {p0, v4, p1, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getPosition([IIZ)I

    move-result v2

    .line 1460
    .local v2, x:I
    sget-object v4, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionLandY:[I

    invoke-direct {p0, v4, p2, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getPosition([IIZ)I

    move-result v3

    .line 1462
    .local v3, y:I
    mul-int/lit8 v4, v2, 0x2

    add-int v1, v3, v4

    .line 1465
    .local v1, point:I
    sget v4, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->INDEX_OF_RESET_SETTINGS_CAMERA:I

    add-int/lit8 v0, v4, -0x1

    .line 1466
    .local v0, max:I
    if-le v1, v0, :cond_0

    .line 1467
    const/4 v1, -0x1

    .line 1471
    :cond_0
    return v1
.end method

.method private getOrderPortrait(II)I
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 1477
    sget-object v6, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionPortX:[I

    const/4 v7, 0x1

    invoke-direct {p0, v6, p1, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getPosition([IIZ)I

    move-result v4

    .line 1478
    .local v4, x:I
    sget-object v6, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionPortY:[I

    const/4 v7, 0x0

    invoke-direct {p0, v6, p2, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getPosition([IIZ)I

    move-result v5

    .line 1480
    .local v5, y:I
    mul-int/lit8 v6, v5, 0x2

    add-int v3, v4, v6

    .line 1482
    .local v3, point:I
    sget-object v6, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->sDropPositionPortY:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    if-ne v5, v6, :cond_0

    .line 1484
    mul-int/lit8 v0, v5, 0x2

    .line 1485
    .local v0, filled:I
    sget v6, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->INDEX_OF_RESET_SETTINGS_CAMERA:I

    sub-int v2, v6, v0

    .line 1486
    .local v2, mod:I
    rsub-int/lit8 v1, v2, 0x2

    .line 1487
    .local v1, missing:I
    sub-int/2addr v3, v1

    .line 1488
    if-ge v3, v0, :cond_0

    .line 1489
    const/4 v3, -0x1

    .line 1494
    .end local v0           #filled:I
    .end local v1           #missing:I
    .end local v2           #mod:I
    :cond_0
    return v3
.end method

.method private getOrderString([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "order"
    .parameter "defaultOrder"

    .prologue
    .line 1697
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1699
    .local v2, valueBuffer:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, defaultIndex:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 1700
    const/4 v1, 0x0

    .local v1, orderIndex:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1701
    aget-object v3, p1, v1

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1700
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1708
    .end local v1           #orderIndex:I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPosition([IIZ)I
    .locals 2
    .parameter "points"
    .parameter "rawPosition"
    .parameter "reverse"

    .prologue
    .line 1498
    if-eqz p3, :cond_1

    .line 1499
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 1500
    aget v1, p1, v0

    if-lt v1, p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    if-lt p2, v1, :cond_0

    move v1, v0

    .line 1513
    :goto_1
    return v1

    .line 1499
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1506
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 1507
    aget v1, p1, v0

    if-gt v1, p2, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    if-gt p2, v1, :cond_2

    move v1, v0

    .line 1509
    goto :goto_1

    .line 1506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1513
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getVideoDefaultOrder(Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    .locals 2
    .parameter "cameraMode"

    .prologue
    .line 1887
    const-string v1, "FRONT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sVideoDefaultOrderFront:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 1896
    .local v0, settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    :goto_0
    return-object v0

    .line 1893
    .end local v0           #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontVideoDefaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .restart local v0       #settings:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    goto :goto_0
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1759
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1760
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1762
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v11

    .line 1763
    .local v11, willNotCache:Z
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 1767
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v8

    .line 1769
    .local v8, color:I
    if-eqz v8, :cond_0

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1772
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 1774
    const/4 v0, 0x0

    .line 1777
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1782
    :goto_0
    const/4 v3, 0x0

    .line 1783
    .local v3, width:I
    const/4 v4, 0x0

    .line 1784
    .local v4, height:I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1785
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1786
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1792
    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1793
    .local v5, scale:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v10, v1

    .line 1794
    .local v10, scaleFactor:F
    const/high16 v1, 0x41c0

    add-float/2addr v1, v10

    div-float v10, v1, v10

    .line 1795
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1797
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1799
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_1
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1806
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1807
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1809
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1810
    .local v7, canvas:Landroid/graphics/Canvas;
    const v1, 0x106000e

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1814
    .end local v7           #canvas:Landroid/graphics/Canvas;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1815
    invoke-virtual {p1, v11}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 1816
    invoke-virtual {p1, v8}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1818
    return-object v0

    .line 1788
    .end local v5           #scale:Landroid/graphics/Matrix;
    .end local v10           #scaleFactor:F
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1789
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_1

    .line 1801
    .restart local v5       #scale:Landroid/graphics/Matrix;
    .restart local v10       #scaleFactor:F
    :catch_0
    move-exception v9

    .line 1802
    .local v9, er:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    goto :goto_2

    .line 1778
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #scale:Landroid/graphics/Matrix;
    .end local v9           #er:Ljava/lang/OutOfMemoryError;
    .end local v10           #scaleFactor:F
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private hideButton(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 1822
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->hideButton(I)V

    .line 1825
    :cond_0
    return-void
.end method

.method public static isOpenOnSelected(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 360
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    :cond_0
    const/4 v0, 0x1

    .line 370
    .local v0, open:Z
    :goto_0
    return v0

    .line 363
    .end local v0           #open:Z
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #open:Z
    goto :goto_0

    .line 367
    .end local v0           #open:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #open:Z
    goto :goto_0
.end method

.method private notifyController(Z)V
    .locals 2
    .parameter "open"

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerPause(Z)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerResume()V

    goto :goto_0
.end method

.method private openDialogImpl()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 670
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->cancelAnimation()V

    .line 672
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getDialog(Ljava/lang/Object;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->close()V

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getDialog(Ljava/lang/Object;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .line 678
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogValue:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogValue:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateDialog(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 680
    .local v0, numberOfOptions:I
    if-ne v0, v4, :cond_1

    .line 682
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    .line 687
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-eqz v1, :cond_3

    .line 688
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mValueChanged:Z

    .line 691
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    if-nez v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getDisplayedOrder(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setSelected(I)V

    .line 698
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->requestFocus()V

    .line 704
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCategoryVisibility()V

    .line 706
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->notifyController(Z)V

    .line 707
    return-void

    .line 684
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v1, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->open(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    goto :goto_0

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setSelected(Landroid/view/View;)V

    goto :goto_1

    .line 700
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->cancelOpenDialog()V

    goto :goto_2
.end method

.method private parseOrder(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "value"
    .parameter "defaultOrder"

    .prologue
    .line 1636
    if-nez p1, :cond_0

    .line 1662
    .end local p2
    :goto_0
    return-object p2

    .line 1639
    .restart local p2
    :cond_0
    const/4 v3, 0x0

    .line 1640
    .local v3, parsedOrder:[Ljava/lang/Object;
    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1641
    .local v2, orderValue:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1642
    .local v1, index:I
    array-length v5, v2

    array-length v6, p2

    if-ne v5, v6, :cond_2

    .line 1643
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1644
    .local v4, resetIndex:I
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1646
    array-length v5, p2

    new-array v3, v5, [Ljava/lang/Object;

    .line 1647
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 1648
    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1649
    array-length v5, p2

    if-ge v1, v5, :cond_1

    if-ltz v1, :cond_1

    aget-object v5, v3, v1

    if-nez v5, :cond_1

    .line 1652
    aget-object v5, p2, v0

    aput-object v5, v3, v1

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1655
    :cond_1
    const/4 v3, 0x0

    .end local v0           #i:I
    .end local v4           #resetIndex:I
    :cond_2
    move-object p2, v3

    .line 1662
    goto :goto_0
.end method

.method private prepareCustomize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1229
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1230
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategoryModificationListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;

    .line 1231
    return-void
.end method

.method private readCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .locals 6
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1601
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v5, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getCameraOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1602
    .local v4, value:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v0

    .line 1604
    .local v0, defaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->parseOrder(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 1605
    .local v3, parsedOrder:[Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 1606
    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1613
    :goto_0
    return-object v5

    .line 1608
    :cond_0
    array-length v5, v3

    new-array v2, v5, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1609
    .local v2, order:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1610
    aget-object v5, v3, v1

    check-cast v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v5, v2, v1

    .line 1609
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 1613
    goto :goto_0
.end method

.method private readVideoOrder(Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    .locals 6
    .parameter "cameraMode"

    .prologue
    .line 1618
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getVideoOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1619
    .local v4, value:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getVideoDefaultOrder(Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v0

    .line 1621
    .local v0, defaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->parseOrder(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 1622
    .local v3, parsedOrder:[Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 1623
    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 1630
    :goto_0
    return-object v5

    .line 1625
    :cond_0
    array-length v5, v3

    new-array v2, v5, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 1626
    .local v2, order:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1627
    aget-object v5, v3, v1

    check-cast v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v5, v2, v1

    .line 1626
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 1630
    goto :goto_0
.end method

.method private releaseBaseView(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 443
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 444
    return-void
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 456
    return-void
.end method

.method private resetCameraOrder()V
    .locals 4

    .prologue
    .line 1292
    const-string v0, "MAIN"

    .line 1293
    .local v0, cameraMode:Ljava/lang/String;
    const-string v1, "NORMAL"

    .line 1294
    .local v1, capMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string v1, "SCENE_RECOGNITION"

    .line 1296
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string v1, "SMILE_DETECTION"

    .line 1298
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string v0, "FRONT"

    .line 1302
    const-string v1, ""

    .line 1303
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->resetOrderArray(I)V

    .line 1306
    return-void
.end method

.method private static setButtonBackground(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 986
    if-lez p1, :cond_0

    .line 987
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 991
    :goto_0
    return-void

    .line 989
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setButtonPressed(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "isSquare"

    .prologue
    .line 971
    if-eqz p1, :cond_0

    .line 972
    const v0, 0x7f020050

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonBackground(Landroid/view/View;I)V

    .line 976
    :goto_0
    return-void

    .line 974
    :cond_0
    const v0, 0x7f02004f

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonBackground(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setButtonSelected(Landroid/view/View;ZZ)V
    .locals 1
    .parameter "view"
    .parameter "isSelected"
    .parameter "isSquare"

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 957
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    if-eqz p2, :cond_1

    .line 959
    const v0, 0x7f02004d

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonBackground(Landroid/view/View;I)V

    .line 966
    :goto_1
    return-void

    .line 955
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 961
    :cond_1
    const v0, 0x7f02004c

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonBackground(Landroid/view/View;I)V

    goto :goto_1

    .line 964
    :cond_2
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonBackground(Landroid/view/View;I)V

    goto :goto_1
.end method

.method private setCameraOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1683
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderString([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, orderString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method private setCategoryVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 835
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getDisplaySize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setVisibility(I)V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOrder()V
    .locals 2

    .prologue
    .line 1667
    const-string v0, "MAIN"

    const-string v1, "NORMAL"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCameraOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v0, "MAIN"

    const-string v1, "SCENE_RECOGNITION"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCameraOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v0, "MAIN"

    const-string v1, "SMILE_DETECTION"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCameraOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v0, "FRONT"

    const-string v1, "NORMAL"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCameraOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v0, "MAIN"

    const-string v1, "CHANGE_MODE_IN_VIDEO"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setVideoOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v0, "FRONT"

    const-string v1, "CHANGE_MODE_IN_VIDEO"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setVideoOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    return-void
.end method

.method private setVideoOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1690
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getVideoOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getVideoDefaultOrder(Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderString([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, orderString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setVideoOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method private setupBaseView(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 434
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnTouchListener;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnTouchListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 435
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 436
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnFocusChangeListener;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnFocusChangeListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 437
    return-void
.end method

.method private declared-synchronized startDragging(Landroid/graphics/Bitmap;IIIIII)V
    .locals 9
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "textureLeft"
    .parameter "textureTop"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 1748
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedX:F

    float-to-int v0, v0

    sub-int v3, v0, p2

    .line 1749
    .local v3, registrationX:I
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedY:F

    float-to-int v0, v0

    sub-int v4, v0, p3

    .line 1751
    .local v4, registrationY:I
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    .line 1755
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDragView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedX:F

    float-to-int v2, v2

    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedY:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDragView;->show(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    monitor-exit p0

    return-void

    .line 1748
    .end local v3           #registrationX:I
    .end local v4           #registrationY:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDragging(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 1712
    const/4 v1, 0x0

    .line 1713
    .local v1, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1714
    .local v6, bpWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1716
    .local v7, bpHeight:I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1717
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1718
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1722
    :goto_0
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 1723
    .local v8, coordinates:[I
    move-object v9, v8

    .line 1724
    .local v9, loc:[I
    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1725
    aget v2, v9, v4

    .line 1726
    .local v2, screenX:I
    const/4 v0, 0x1

    aget v3, v9, v0

    .local v3, screenY:I
    move-object v0, p0

    move v5, v4

    .line 1728
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->startDragging(Landroid/graphics/Bitmap;IIIIII)V

    .line 1730
    if-eqz v1, :cond_0

    .line 1731
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1733
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    return-void

    .line 1719
    .end local v2           #screenX:I
    .end local v3           #screenY:I
    .end local v8           #coordinates:[I
    .end local v9           #loc:[I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private suspendCustomize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1234
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->createDummyEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1235
    .local v0, motion:Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategoryModificationListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;->finish(Landroid/view/MotionEvent;)V

    .line 1238
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    .line 1239
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 1240
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 1242
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setOrder()V

    .line 1243
    return-void
.end method

.method private updateOrderMap()V
    .locals 8

    .prologue
    .line 1255
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1256
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    .line 1258
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1259
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    .line 1262
    :cond_1
    const-string v6, "MAIN"

    const-string v7, "NORMAL"

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->readCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v2

    .line 1264
    .local v2, normal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const-string v6, "MAIN"

    const-string v7, "SCENE_RECOGNITION"

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->readCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v3

    .line 1266
    .local v3, scene:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const-string v6, "MAIN"

    const-string v7, "SMILE_DETECTION"

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->readCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v4

    .line 1268
    .local v4, smile:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const-string v6, "FRONT"

    const-string v7, "NORMAL"

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->readCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v0

    .line 1270
    .local v0, front:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    const-string v7, "NORMAL"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    const-string v7, "SCENE_RECOGNITION"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    const-string v7, "SMILE_DETECTION"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    const-string v7, "FRONT"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-string v6, "MAIN"

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->readVideoOrder(Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v5

    .line 1280
    .local v5, video:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    const-string v6, "FRONT"

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->readVideoOrder(Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v1

    .line 1281
    .local v1, frontVideo:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    const-string v7, "CHANGE_MODE_IN_VIDEO"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    const-string v7, "FRONT"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    return-void
.end method


# virtual methods
.method public closeDialog(ZI)V
    .locals 4
    .parameter "onTap"
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-nez v1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 732
    :cond_0
    monitor-enter p0

    .line 733
    :try_start_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    .line 734
    .local v0, keys:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 735
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    .line 737
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->close()V

    .line 753
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->clearFocus()V

    .line 754
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCategoryVisibility()V

    .line 755
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->notifyController(Z)V

    goto :goto_0

    .line 735
    .end local v0           #keys:[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .locals 1
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1585
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    goto :goto_0
.end method

.method public declared-synchronized getDisplayedCategory()Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;
    .locals 1

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDisplayedCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayedOrder(Ljava/lang/Object;)I
    .locals 8
    .parameter "key"

    .prologue
    .line 1340
    iget v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v1

    .line 1341
    .local v1, array:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1342
    .local v5, selectables:I
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 1343
    .local v3, item:Ljava/lang/Object;
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v6, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSelectable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1344
    add-int/lit8 v5, v5, 0x1

    .line 1345
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1346
    add-int/lit8 v6, v5, -0x1

    .line 1350
    .end local v3           #item:Ljava/lang/Object;
    :goto_1
    return v6

    .line 1342
    .restart local v3       #item:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1350
    .end local v3           #item:Ljava/lang/Object;
    :cond_1
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 1330
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    .line 1331
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1332
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1336
    .end local v1           #i:I
    :goto_1
    return v1

    .line 1331
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public declared-synchronized getOrderArray(IZ)[Ljava/lang/Object;
    .locals 5
    .parameter "mode"
    .parameter "isDragging"

    .prologue
    .line 1354
    monitor-enter p0

    const/4 v0, 0x0

    .line 1365
    .local v0, array:[Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    array-length v1, v1

    new-array v0, v1, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1366
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    monitor-exit p0

    return-object v0

    .line 1354
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getQuickCategory()Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    return-object v0
.end method

.method public getValues(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getValueList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVideoOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    .locals 1
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1593
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 1596
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    goto :goto_0
.end method

.method public hideSettingsCategory()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public isDialogDisplaying()Z
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    if-nez v1, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 408
    .local v0, displaying:Z
    :goto_0
    return v0

    .line 403
    .end local v0           #displaying:Z
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .restart local v0       #displaying:Z
    :goto_1
    goto :goto_0

    .end local v0           #displaying:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isDialogOpen()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    return v0
.end method

.method public isSelectable(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, selectable:Z
    if-nez p1, :cond_0

    .line 376
    const/4 v3, 0x0

    .line 390
    :goto_0
    return v3

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, order:Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 380
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #order:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 381
    .local v1, order_int:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    array-length v3, v3

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    array-length v3, v3

    if-le v1, v3, :cond_2

    .line 383
    const/4 v2, 0x0

    .end local v1           #order_int:I
    :cond_1
    :goto_1
    move v3, v2

    .line 390
    goto :goto_0

    .line 385
    .restart local v1       #order_int:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onCategoryTapped(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 945
    :goto_0
    return-void

    .line 925
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0d0034

    if-ne v2, v3, :cond_2

    .line 944
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    goto :goto_0

    .line 928
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 929
    .local v0, order:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 930
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #order:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 931
    .local v1, order_int:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    array-length v2, v2

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mVideoOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 934
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showMessage(II)V

    goto :goto_1

    .line 937
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->openDialog(I)V

    .line 938
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mStateListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;

    if-eqz v2, :cond_1

    .line 939
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mStateListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;->onOpenSettingsDialog()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 284
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "changed"

    .prologue
    const/4 v2, 0x0

    .line 561
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p1, v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 569
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p1, v0, :cond_1

    .line 570
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 572
    :cond_1
    return-void
.end method

.method public onTouchEventFromSettingsDrawer(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 475
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->isDialogDisplaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v2

    .line 480
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 543
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 482
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    .line 483
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    .line 484
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->convertPositionToDisplayedOrder(Landroid/view/MotionEvent;)I

    move-result v0

    .line 485
    .local v0, order_new:I
    if-gez v0, :cond_4

    .line 486
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 490
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    if-eqz v1, :cond_2

    .line 492
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;

    goto :goto_1

    .line 487
    :cond_4
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getButton(I)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    goto :goto_2

    .line 500
    .end local v0           #order_new:I
    :pswitch_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    if-nez v1, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->createDummyEvent()Landroid/view/MotionEvent;

    move-result-object p1

    .line 502
    if-nez p1, :cond_2

    goto :goto_0

    .line 512
    :pswitch_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z

    if-eqz v1, :cond_5

    .line 513
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    if-nez v1, :cond_2

    .line 515
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->createDummyEvent()Landroid/view/MotionEvent;

    move-result-object p1

    .line 516
    if-nez p1, :cond_2

    goto :goto_0

    .line 523
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->onCategoryTapped(Landroid/view/View;)V

    .line 531
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-nez v1, :cond_2

    .line 532
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public openDialog(I)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 650
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->canOpenWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->cancelOpenDialog()V

    .line 666
    :goto_0
    return-void

    .line 655
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, array:[Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z

    if-eqz v1, :cond_1

    .line 657
    aget-object v1, v0, p1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    goto :goto_0

    .line 663
    :cond_1
    aget-object v1, v0, p1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    .line 665
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->openDialogImpl()V

    goto :goto_0
.end method

.method public openGeotagSettingsDialog()V
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->openDialog(I)V

    .line 640
    return-void
.end method

.method public openResetSettingsDialog()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->releaseBaseView(Landroid/view/ViewGroup;)V

    .line 256
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->removeCategory()V

    .line 260
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->removeDialog()V

    .line 262
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    .line 269
    return-void
.end method

.method public removeCategory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->release()V

    .line 823
    :cond_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setCategory(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 824
    return-void
.end method

.method public removeDialog()V
    .locals 3

    .prologue
    .line 626
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .line 627
    .local v0, dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    if-eqz v0, :cond_0

    .line 628
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->release()V

    goto :goto_0

    .line 631
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 632
    return-void
.end method

.method public resetOrderArray(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 1381
    const/4 v2, 0x0

    .line 1382
    .local v2, defaultOrder:[Ljava/lang/Object;
    const-string v0, "MAIN"

    .line 1383
    .local v0, cameraMode:Ljava/lang/String;
    const-string v1, "SCENE_RECOGNITION"

    .line 1384
    .local v1, capMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraDefaultOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v2

    .line 1385
    invoke-virtual {p0, p1, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1386
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->copyOrderArray([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1387
    return-void
.end method

.method public restartPreview(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public setCategory(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "quick"
    .parameter "advanced"
    .parameter "ext"

    .prologue
    .line 801
    if-nez p1, :cond_2

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    .line 813
    .end local p1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setup()V

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategoryListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 817
    :cond_1
    return-void

    .line 804
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    if-eqz v0, :cond_0

    .line 805
    check-cast p1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    .end local p1
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    goto :goto_0
.end method

.method public declared-synchronized setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 302
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mOrientation:I

    .line 303
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->updateOrientation(I)V

    .line 305
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    .line 306
    .local v0, dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->setOrientation(I)V

    goto :goto_0

    .line 310
    .end local v0           #dialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
    :cond_1
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mStateListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;

    .line 1903
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->alreadySet(Lcom/sonyericsson/android/camera3d/CameraConfigManager;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogValue:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mValueChanged:Z

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->restartPreview(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->restartPreview(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mBaseView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    return-void
.end method

.method public showSettingsCategory()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public switchOrderTable(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mode"
    .parameter "cameraMode"
    .parameter "capturingMode"

    .prologue
    .line 1401
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getCameraOrder(Ljava/lang/String;Ljava/lang/String;)[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCameraOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1402
    return-void
.end method

.method public testSound(Ljava/lang/String;I)V
    .locals 2
    .parameter "value"
    .parameter "mode"

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, soundNumber:I
    const-string v1, "SOUND1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const/4 v0, 0x0

    .line 422
    :goto_0
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->test(II)V

    .line 423
    :cond_0
    return-void

    .line 417
    :cond_1
    const-string v1, "OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public updateCategory()V
    .locals 3

    .prologue
    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getOrderArray(IZ)[Ljava/lang/Object;

    move-result-object v0

    .line 915
    .local v0, keys:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory([Ljava/lang/Object;)V

    .line 916
    monitor-exit p0

    .line 917
    return-void

    .line 916
    .end local v0           #keys:[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized updateCategory([Ljava/lang/Object;)V
    .locals 11
    .parameter "keys"

    .prologue
    const/4 v10, 0x2

    .line 851
    monitor-enter p0

    const/4 v4, 0x0

    .line 853
    .local v4, numberOfSelectables:I
    const/4 v0, 0x0

    .line 856
    .local v0, currentValue:Ljava/lang/String;
    const/4 v5, 0x0

    .line 857
    .local v5, selectable:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v7, p1

    if-ge v1, v7, :cond_0

    .line 858
    aget-object v3, p1, v1

    .line 860
    .local v3, key:Ljava/lang/Object;
    sget-object v7, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eq v3, v7, :cond_0

    sget-object v7, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne v3, v7, :cond_2

    .line 888
    .end local v3           #key:Ljava/lang/Object;
    :cond_0
    if-ge v4, v10, :cond_5

    .line 889
    move v1, v4

    :goto_1
    if-ge v1, v10, :cond_5

    .line 890
    if-ge v1, v10, :cond_1

    .line 891
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategoryModificationListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setBlankButton(Ljava/lang/Object;Landroid/view/View$OnTouchListener;)V

    .line 889
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 864
    .restart local v3       #key:Ljava/lang/Object;
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v7, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getDrawableResourceId(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 868
    .local v2, iconResourceId:I
    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getCategoryResourceId(Ljava/lang/Object;I)I

    move-result v6

    .line 871
    .local v6, textResourceId:I
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSelectable(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 872
    add-int/lit8 v4, v4, 0x1

    .line 873
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 874
    .local v3, key:Ljava/lang/Integer;
    const/4 v5, 0x1

    .line 879
    .end local v3           #key:Ljava/lang/Integer;
    :goto_2
    if-gt v4, v10, :cond_3

    .line 880
    if-eqz v5, :cond_3

    .line 881
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategoryModificationListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryModificationListener;

    invoke-virtual {v7, v3, v2, v6, v8}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setButton(Ljava/lang/Object;IILandroid/view/View$OnTouchListener;)V

    .line 857
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .local v3, key:Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 897
    .end local v2           #iconResourceId:I
    .end local v3           #key:Ljava/lang/Object;
    .end local v6           #textResourceId:I
    :cond_5
    if-gt v4, v10, :cond_6

    .line 898
    sget-object v7, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;->QUICK_ONLY:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDisplayedCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

    .line 906
    :goto_3
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->commit()V

    .line 909
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    monitor-exit p0

    return-void

    .line 899
    :cond_6
    const/4 v7, 0x4

    if-gt v4, v7, :cond_7

    .line 900
    :try_start_1
    sget-object v7, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;->ADVANCED_HALF:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDisplayedCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 851
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 902
    :cond_7
    :try_start_2
    sget-object v7, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;->ADVANCED_FULL:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDisplayedCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DisplayedCategory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public updateDialog(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 11
    .parameter "key"
    .parameter "currentValue"

    .prologue
    .line 767
    const/4 v9, 0x0

    invoke-static {p1, v9}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getCategoryResourceId(Ljava/lang/Object;I)I

    move-result v6

    .line 770
    .local v6, titleResourceId:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    const/high16 v10, 0x4160

    invoke-interface {v9, v6, v10}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->setTitle(IF)V

    .line 772
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->getValues(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v8

    .line 776
    .local v8, values:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v7, v0, v1

    .line 777
    .local v7, value:Ljava/lang/String;
    invoke-static {p1, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getDrawableResourceId(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 778
    .local v2, iconResourceId:I
    invoke-static {p1, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getValueTextResourceId(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    .line 779
    .local v5, textResourceId:I
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 780
    const/4 v3, 0x1

    .line 785
    .local v3, isSelected:Z
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v9, v7, v2, v5, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->setButton(Ljava/lang/Object;IIZ)V

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v3           #isSelected:Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #isSelected:Z
    goto :goto_1

    .line 790
    .end local v2           #iconResourceId:I
    .end local v3           #isSelected:Z
    .end local v5           #textResourceId:I
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialog:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;->commit()I

    move-result v9

    return v9
.end method
