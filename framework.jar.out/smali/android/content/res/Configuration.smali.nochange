.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName; = null

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenLayout:I

.field public seq:I

.field public themeComponent:Landroid/content/ComponentName;

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, ""

    .line 214
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    const-string v1, ""

    invoke-direct {v0, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    .line 635
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 245
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 651
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static needNewResources(II)Z
    .locals 1
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 530
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 655
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 656
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 657
    .local v1, b:F
    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v3, v5

    .line 701
    :goto_0
    return v3

    .line 658
    :cond_0
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    move v3, v6

    goto :goto_0

    .line 659
    :cond_1
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v3, v4

    .line 660
    .local v2, n:I
    if-eqz v2, :cond_2

    move v3, v2

    goto :goto_0

    .line 661
    :cond_2
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v3, v4

    .line 662
    if-eqz v2, :cond_3

    move v3, v2

    goto :goto_0

    .line 663
    :cond_3
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_4

    .line 664
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_0

    .line 665
    :cond_4
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_5

    move v3, v5

    .line 666
    goto :goto_0

    .line 668
    :cond_5
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 669
    if-eqz v2, :cond_6

    move v3, v2

    goto :goto_0

    .line 670
    :cond_6
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 671
    if-eqz v2, :cond_7

    move v3, v2

    goto :goto_0

    .line 672
    :cond_7
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 673
    if-eqz v2, :cond_8

    move v3, v2

    goto :goto_0

    .line 675
    :cond_8
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v3, v4

    .line 676
    if-eqz v2, :cond_9

    move v3, v2

    goto :goto_0

    .line 677
    :cond_9
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v3, v4

    .line 678
    if-eqz v2, :cond_a

    move v3, v2

    goto :goto_0

    .line 679
    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v3, v4

    .line 680
    if-eqz v2, :cond_b

    move v3, v2

    goto/16 :goto_0

    .line 681
    :cond_b
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v3, v4

    .line 682
    if-eqz v2, :cond_c

    move v3, v2

    goto/16 :goto_0

    .line 683
    :cond_c
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v3, v4

    .line 684
    if-eqz v2, :cond_d

    move v3, v2

    goto/16 :goto_0

    .line 685
    :cond_d
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v3, v4

    .line 686
    if-eqz v2, :cond_e

    move v3, v2

    goto/16 :goto_0

    .line 687
    :cond_e
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v3, v4

    .line 688
    if-eqz v2, :cond_f

    move v3, v2

    goto/16 :goto_0

    .line 689
    :cond_f
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v3, v4

    .line 690
    if-eqz v2, :cond_10

    move v3, v2

    goto/16 :goto_0

    .line 691
    :cond_10
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v3, v4

    .line 692
    if-eqz v2, :cond_11

    move v3, v2

    goto/16 :goto_0

    .line 693
    :cond_11
    iget-object v3, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_12

    .line 694
    iget-object v3, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_14

    move v3, v6

    goto/16 :goto_0

    .line 695
    :cond_12
    iget-object v3, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_13

    move v3, v5

    .line 696
    goto/16 :goto_0

    .line 698
    :cond_13
    iget-object v3, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    :cond_14
    move v3, v2

    .line 701
    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 461
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 463
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 464
    or-int/lit8 v0, v0, 0x1

    .line 466
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 467
    or-int/lit8 v0, v0, 0x2

    .line 469
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 471
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 473
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_5

    .line 475
    or-int/lit8 v0, v0, 0x8

    .line 477
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_6

    .line 479
    or-int/lit8 v0, v0, 0x10

    .line 481
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_7

    .line 483
    or-int/lit8 v0, v0, 0x20

    .line 485
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_8

    .line 487
    or-int/lit8 v0, v0, 0x20

    .line 489
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_9

    .line 491
    or-int/lit8 v0, v0, 0x40

    .line 493
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_a

    .line 495
    or-int/lit8 v0, v0, 0x20

    .line 497
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_b

    .line 499
    or-int/lit16 v0, v0, 0x80

    .line 501
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v1, v2, :cond_c

    .line 503
    or-int/lit16 v0, v0, 0x100

    .line 505
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_d

    .line 507
    or-int/lit16 v0, v0, 0x200

    .line 509
    :cond_d
    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    sget-object v2, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    if-eq v1, v2, :cond_10

    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_f

    :cond_e
    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 512
    :cond_f
    or-int/lit16 v0, v0, 0x400

    .line 515
    :cond_10
    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 705
    if-nez p1, :cond_0

    move v0, v1

    .line 707
    :goto_0
    return v0

    .line 706
    :cond_0
    if-ne p1, p0, :cond_1

    move v0, v2

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 712
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 715
    :goto_0
    return v0

    .line 713
    :catch_0
    move-exception v0

    .line 715
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 719
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    float-to-int v0, v0

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 539
    if-nez p1, :cond_0

    move v1, v3

    .line 559
    :goto_0
    return v1

    .line 543
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-nez v1, :cond_1

    move v1, v4

    .line 546
    goto :goto_0

    .line 548
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v1, :cond_2

    move v1, v4

    .line 551
    goto :goto_0

    .line 553
    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v1, v2

    .line 554
    .local v0, diff:I
    const/high16 v1, 0x1

    if-le v0, v1, :cond_3

    move v1, v3

    .line 557
    goto :goto_0

    .line 559
    :cond_3
    if-lez v0, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 333
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x1

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 625
    .local v0, themeComponentInt:I
    if-nez v0, :cond_3

    .line 626
    sget-object v1, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    .line 632
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 633
    return-void

    .line 614
    .end local v0           #themeComponentInt:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 627
    .restart local v0       #themeComponentInt:I
    :cond_3
    if-ne v0, v5, :cond_4

    .line 628
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    goto :goto_1

    .line 629
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 248
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 249
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 250
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 251
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 254
    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 255
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 256
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 257
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 258
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 259
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 260
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 261
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 262
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 263
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 264
    iget-object v0, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    sget-object v1, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    if-eq v0, v1, :cond_1

    .line 265
    iget-object v0, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    .line 268
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 269
    return-void

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 314
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 316
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 317
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 318
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 319
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 320
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 321
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 322
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 323
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 324
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 325
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 326
    sget-object v0, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    .line 327
    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 328
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "/"

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 273
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, " imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, " loc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, " layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, " uiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, " theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_0

    .line 302
    const-string v1, " seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v3, 0x0

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 346
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 347
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 349
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 350
    or-int/lit8 v0, v0, 0x1

    .line 351
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 353
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 354
    or-int/lit8 v0, v0, 0x2

    .line 355
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 357
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 359
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 360
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_15

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    :goto_0
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 363
    :cond_4
    iget-boolean v1, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    .line 365
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 366
    or-int/lit8 v0, v0, 0x4

    .line 368
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_7

    .line 370
    or-int/lit8 v0, v0, 0x8

    .line 371
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 373
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_8

    .line 375
    or-int/lit8 v0, v0, 0x10

    .line 376
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 378
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_9

    .line 380
    or-int/lit8 v0, v0, 0x20

    .line 381
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 383
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_a

    .line 385
    or-int/lit8 v0, v0, 0x20

    .line 386
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 388
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_b

    .line 390
    or-int/lit8 v0, v0, 0x40

    .line 391
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 393
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_c

    .line 395
    or-int/lit8 v0, v0, 0x20

    .line 396
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 398
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_d

    .line 400
    or-int/lit16 v0, v0, 0x80

    .line 401
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 403
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v1, v2, :cond_e

    .line 405
    or-int/lit16 v0, v0, 0x100

    .line 406
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 408
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_10

    .line 410
    or-int/lit16 v0, v0, 0x200

    .line 411
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_f

    .line 412
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 415
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_10

    .line 416
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 420
    :cond_10
    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    sget-object v2, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    if-eq v1, v2, :cond_13

    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_12

    :cond_11
    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_13

    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 423
    :cond_12
    or-int/lit16 v0, v0, 0x400

    .line 424
    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_16

    iget-object v1, p1, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    .line 427
    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_14

    .line 428
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 430
    :cond_14
    return v0

    :cond_15
    move-object v1, v3

    .line 360
    goto/16 :goto_0

    :cond_16
    move-object v1, v3

    .line 424
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 571
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v0, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    sget-object v1, Landroid/content/res/Configuration;->THEME_COMPONENT_UNDEFINED:Landroid/content/ComponentName;

    if-ne v0, v1, :cond_2

    .line 596
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    :goto_2
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    return-void

    .line 576
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 597
    :cond_2
    iget-object v0, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    .line 598
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 600
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Landroid/content/res/Configuration;->themeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
