.class final Landroid/widget/TimeHandler;
.super Ljava/lang/Object;
.source "TimeHandler.java"


# instance fields
.field private final mHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIs24:Z

.field private final mMinutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "is24HourRange"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x18

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Landroid/widget/TimeHandler;->mHours:Ljava/util/List;

    .line 36
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x3c

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Landroid/widget/TimeHandler;->mMinutes:Ljava/util/List;

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "context should not be null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 46
    :cond_0
    iput-boolean p2, p0, Landroid/widget/TimeHandler;->mIs24:Z

    .line 49
    invoke-direct {p0, p2}, Landroid/widget/TimeHandler;->createHours(Z)V

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 53
    .local v2, calendar:Ljava/util/Calendar;
    const/16 v10, 0xc

    invoke-static {v10}, Ljava/text/DateFormat$Field;->ofCalendarField(I)Ljava/text/DateFormat$Field;

    move-result-object v3

    .line 54
    .local v3, calendarField:Ljava/text/DateFormat$Field;
    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 55
    .local v7, fieldPosition:Ljava/text/FieldPosition;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 57
    .local v5, dateFormat:Ljava/text/DateFormat;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v10, 0x3c

    if-ge v8, v10, :cond_1

    .line 58
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v9, label:Ljava/lang/StringBuffer;
    const/16 v10, 0xc

    invoke-virtual {v2, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 61
    .local v4, date:Ljava/util/Date;
    invoke-virtual {v5, v4, v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 63
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    .line 64
    .local v1, beginIndex:I
    invoke-virtual {v7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    .line 66
    .local v6, endIndex:I
    invoke-virtual {v9, v1, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, asString:Ljava/lang/String;
    iget-object v10, p0, Landroid/widget/TimeHandler;->mMinutes:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 69
    .end local v0           #asString:Ljava/lang/String;
    .end local v1           #beginIndex:I
    .end local v4           #date:Ljava/util/Date;
    .end local v6           #endIndex:I
    .end local v9           #label:Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method private createHours(Z)V
    .locals 9
    .parameter "is24HourRange"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x18

    if-ge v2, v4, :cond_1

    .line 87
    iget-object v4, p0, Landroid/widget/TimeHandler;->mHours:Ljava/util/List;

    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2           #i:I
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 91
    .local v3, numberFormat:Ljava/text/NumberFormat;
    const-wide/16 v4, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, firstItem:Ljava/lang/String;
    const/16 v0, 0xb

    .line 93
    .local v0, endHour:I
    iget-object v4, p0, Landroid/widget/TimeHandler;->mHours:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v2, 0x1

    .restart local v2       #i:I
    :goto_1
    const/16 v4, 0xb

    if-gt v2, v4, :cond_1

    .line 96
    iget-object v4, p0, Landroid/widget/TimeHandler;->mHours:Ljava/util/List;

    int-to-long v5, v2

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v0           #endHour:I
    .end local v1           #firstItem:Ljava/lang/String;
    .end local v3           #numberFormat:Ljava/text/NumberFormat;
    :cond_1
    return-void
.end method


# virtual methods
.method public getHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Landroid/widget/TimeHandler;->mHours:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMinutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/TimeHandler;->mMinutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateHourRange(Z)V
    .locals 1
    .parameter "is24HourRange"

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/widget/TimeHandler;->mIs24:Z

    if-eq v0, p1, :cond_0

    .line 108
    iget-object v0, p0, Landroid/widget/TimeHandler;->mHours:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/TimeHandler;->createHours(Z)V

    .line 110
    iput-boolean p1, p0, Landroid/widget/TimeHandler;->mIs24:Z

    .line 112
    :cond_0
    return-void
.end method
