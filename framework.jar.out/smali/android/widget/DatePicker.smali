.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final FRICTION_FACTOR:F = 0.75f

.field private static final NUMBER_OF_MONTHS:I = 0xc

.field private static final SNAP_TO_FACTOR:F = 0.6f

.field private static final VELOCITY_FACTOR:F = 3.0f

.field private static final VELOCITY_FACTOR_FOR_DAYS:F = 4.0f


# instance fields
.field private final mDateHandler:Landroid/widget/DateHandler;

.field private mDay:I

.field private final mDayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDayPickerList:Landroid/widget/PickerList;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private final mMonthPickerList:Landroid/widget/PickerList;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private mYear:I

.field private final mYearPickerList:Landroid/widget/PickerList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 111
    sget-object v7, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/16 v8, 0x76c

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 115
    .local v6, startYear:I
    const/4 v7, 0x1

    const/16 v8, 0x834

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 117
    .local v2, endYear:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, months:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 128
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v3           #i:I
    :cond_0
    new-instance v7, Landroid/widget/DateHandler;

    invoke-direct {v7, v6, v2, v5}, Landroid/widget/DateHandler;-><init>(II[Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    .line 134
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 136
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x1090021

    const/4 v8, 0x1

    invoke-virtual {v4, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    const v7, 0x10201a5

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/PickerList;

    iput-object p2, p0, Landroid/widget/DatePicker;->mDayPickerList:Landroid/widget/PickerList;

    .line 139
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090020

    iget-object v9, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    invoke-virtual {v9}, Landroid/widget/DateHandler;->getDays()Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, p1, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v7, p0, Landroid/widget/DatePicker;->mDayAdapter:Landroid/widget/ArrayAdapter;

    .line 141
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPickerList:Landroid/widget/PickerList;

    iget-object v8, p0, Landroid/widget/DatePicker;->mDayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/PickerList;->setAdapter(Landroid/widget/Adapter;)V

    .line 142
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPickerList:Landroid/widget/PickerList;

    const/high16 v8, 0x3f40

    const v9, 0x3f19999a

    const/high16 v10, 0x4080

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/PickerList;->setDynamics(FFF)V

    .line 144
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPickerList:Landroid/widget/PickerList;

    new-instance v8, Landroid/widget/DatePicker$1;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/PickerList;->setPickerListListener(Landroid/widget/PickerListListener;)V

    .line 156
    const v7, 0x10201a7

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/PickerList;

    iput-object p2, p0, Landroid/widget/DatePicker;->mMonthPickerList:Landroid/widget/PickerList;

    .line 157
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPickerList:Landroid/widget/PickerList;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090020

    iget-object v10, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    invoke-virtual {v10}, Landroid/widget/DateHandler;->getMonths()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, p1, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v7, v8}, Landroid/widget/PickerList;->setAdapter(Landroid/widget/Adapter;)V

    .line 159
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPickerList:Landroid/widget/PickerList;

    const/high16 v8, 0x3f40

    const v9, 0x3f19999a

    const/high16 v10, 0x4040

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/PickerList;->setDynamics(FFF)V

    .line 160
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPickerList:Landroid/widget/PickerList;

    new-instance v8, Landroid/widget/DatePicker$2;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/PickerList;->setPickerListListener(Landroid/widget/PickerListListener;)V

    .line 169
    const v7, 0x10201a9

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/PickerList;

    iput-object p2, p0, Landroid/widget/DatePicker;->mYearPickerList:Landroid/widget/PickerList;

    .line 170
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPickerList:Landroid/widget/PickerList;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090020

    iget-object v10, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    invoke-virtual {v10}, Landroid/widget/DateHandler;->getYears()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, p1, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v7, v8}, Landroid/widget/PickerList;->setAdapter(Landroid/widget/Adapter;)V

    .line 172
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPickerList:Landroid/widget/PickerList;

    const/high16 v8, 0x3f40

    const v9, 0x3f19999a

    const/high16 v10, 0x4040

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/PickerList;->setDynamics(FFF)V

    .line 173
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPickerList:Landroid/widget/PickerList;

    new-instance v8, Landroid/widget/DatePicker$3;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/PickerList;->setPickerListListener(Landroid/widget/PickerListListener;)V

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 189
    .local v1, cal:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 192
    invoke-direct {p0, v5}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 195
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 197
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DatePicker;)Landroid/widget/DateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$200(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$602(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method private adjustMaxDay()V
    .locals 5

    .prologue
    .line 470
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 471
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 472
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 473
    .local v1, max:I
    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 474
    iput v1, p0, Landroid/widget/DatePicker;->mDay:I

    .line 476
    :cond_0
    return-void
.end method

.method private checkInputValues(III)V
    .locals 9
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const-string v8, ", "

    const-string v7, ""

    .line 418
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 419
    .local v0, cal:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v3}, Ljava/util/Calendar;->set(III)V

    .line 420
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 421
    .local v2, maxMonth:I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 423
    .local v1, maxDay:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    if-le p3, v1, :cond_6

    .line 425
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid year: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ltz p2, :cond_1

    if-le p2, v2, :cond_4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid month: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ltz p3, :cond_2

    if-le p3, v1, :cond_5

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid day: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string v5, ""

    move-object v5, v7

    goto :goto_0

    :cond_4
    const-string v5, ""

    move-object v5, v7

    goto :goto_1

    :cond_5
    const-string v5, ""

    move-object v5, v7

    goto :goto_2

    .line 431
    :cond_6
    return-void
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 289
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 290
    .local v0, currentLocale:Ljava/util/Locale;
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 303
    :goto_0
    return-object v2

    .line 293
    :cond_0
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_0
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 296
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 297
    iget-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_1
    iput-object v0, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 302
    .end local v1           #i:I
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 482
    :cond_0
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 14
    .parameter "months"

    .prologue
    .line 218
    const/4 v12, 0x0

    aget-object v12, p1, v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 219
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 224
    .local v5, format:Ljava/text/DateFormat;
    :goto_0
    instance-of v12, v5, Ljava/text/SimpleDateFormat;

    if-eqz v12, :cond_3

    .line 225
    check-cast v5, Ljava/text/SimpleDateFormat;

    .end local v5           #format:Ljava/text/DateFormat;
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, order:Ljava/lang/String;
    :goto_1
    const v12, 0x10201a3

    invoke-virtual {p0, v12}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 235
    .local v9, parent:Landroid/widget/LinearLayout;
    const v12, 0x10201a4

    invoke-virtual {p0, v12}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 236
    .local v1, dayData:Landroid/widget/LinearLayout;
    const v12, 0x10201a6

    invoke-virtual {p0, v12}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 237
    .local v7, monthData:Landroid/widget/LinearLayout;
    const v12, 0x10201a8

    invoke-virtual {p0, v12}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 238
    .local v11, yearData:Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    const/4 v10, 0x0

    .line 241
    .local v10, quoted:Z
    const/4 v2, 0x0

    .local v2, didDay:Z
    const/4 v3, 0x0

    .local v3, didMonth:Z
    const/4 v4, 0x0

    .line 243
    .local v4, didYear:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_8

    .line 244
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    .local v0, c:C
    const/16 v12, 0x27

    if-ne v0, v12, :cond_0

    .line 247
    if-nez v10, :cond_4

    const/4 v12, 0x1

    move v10, v12

    .line 250
    :cond_0
    :goto_3
    if-nez v10, :cond_1

    .line 251
    const/16 v12, 0x64

    if-ne v0, v12, :cond_5

    if-nez v2, :cond_5

    .line 252
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    const/4 v2, 0x1

    .line 243
    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 221
    .end local v0           #c:C
    .end local v1           #dayData:Landroid/widget/LinearLayout;
    .end local v2           #didDay:Z
    .end local v3           #didMonth:Z
    .end local v4           #didYear:Z
    .end local v6           #i:I
    .end local v7           #monthData:Landroid/widget/LinearLayout;
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #parent:Landroid/widget/LinearLayout;
    .end local v10           #quoted:Z
    .end local v11           #yearData:Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .restart local v5       #format:Ljava/text/DateFormat;
    goto :goto_0

    .line 228
    :cond_3
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>([C)V

    .restart local v8       #order:Ljava/lang/String;
    goto :goto_1

    .line 247
    .end local v5           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #dayData:Landroid/widget/LinearLayout;
    .restart local v2       #didDay:Z
    .restart local v3       #didMonth:Z
    .restart local v4       #didYear:Z
    .restart local v6       #i:I
    .restart local v7       #monthData:Landroid/widget/LinearLayout;
    .restart local v9       #parent:Landroid/widget/LinearLayout;
    .restart local v10       #quoted:Z
    .restart local v11       #yearData:Landroid/widget/LinearLayout;
    :cond_4
    const/4 v12, 0x0

    move v10, v12

    goto :goto_3

    .line 254
    :cond_5
    const/16 v12, 0x4d

    if-eq v0, v12, :cond_6

    const/16 v12, 0x4c

    if-ne v0, v12, :cond_7

    :cond_6
    if-nez v3, :cond_7

    .line 255
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    const/4 v3, 0x1

    goto :goto_4

    .line 257
    :cond_7
    const/16 v12, 0x79

    if-ne v0, v12, :cond_1

    if-nez v4, :cond_1

    .line 258
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    const/4 v4, 0x1

    goto :goto_4

    .line 265
    .end local v0           #c:C
    :cond_8
    if-nez v3, :cond_9

    .line 266
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    :cond_9
    if-nez v2, :cond_a

    .line 269
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    :cond_a
    if-nez v4, :cond_b

    .line 272
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    :cond_b
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 447
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 449
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 451
    .local v1, max:I
    iget-object v2, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    invoke-virtual {v2, v1}, Landroid/widget/DateHandler;->adjustMaxDay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 454
    :cond_0
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPickerList:Landroid/widget/PickerList;

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PickerList;->setSelection(I)V

    .line 455
    return-void
.end method

.method private updateSpinners()V
    .locals 3

    .prologue
    .line 434
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 435
    iget-object v1, p0, Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;

    invoke-virtual {v1}, Landroid/widget/DateHandler;->getYears()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 436
    .local v0, yearPos:I
    if-ltz v0, :cond_0

    .line 437
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPickerList:Landroid/widget/PickerList;

    invoke-virtual {v1, v0}, Landroid/widget/PickerList;->setSelection(I)V

    .line 439
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPickerList:Landroid/widget/PickerList;

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v1, v2}, Landroid/widget/PickerList;->setSelection(I)V

    .line 440
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 373
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->checkInputValues(III)V

    .line 402
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 403
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 404
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 405
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 406
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 407
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 384
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    move-object v1, v0

    .line 385
    .local v1, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 386
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mYear:I

    .line 387
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 388
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 389
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 390
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 377
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 379
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPickerList:Landroid/widget/PickerList;

    invoke-virtual {v0, p1}, Landroid/widget/PickerList;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPickerList:Landroid/widget/PickerList;

    invoke-virtual {v0, p1}, Landroid/widget/PickerList;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPickerList:Landroid/widget/PickerList;

    invoke-virtual {v0, p1}, Landroid/widget/PickerList;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->checkInputValues(III)V

    .line 278
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 279
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 280
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 281
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 282
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 283
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    .line 286
    :cond_1
    return-void
.end method
