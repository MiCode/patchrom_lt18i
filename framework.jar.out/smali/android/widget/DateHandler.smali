.class final Landroid/widget/DateHandler;
.super Ljava/lang/Object;
.source "DateHandler.java"


# instance fields
.field private final mAllDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mYears:Ljava/util/List;
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
.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 20
    .parameter "startYear"
    .parameter "endYear"
    .parameter "months"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v16, Ljava/util/ArrayList;

    const/16 v17, 0x1f

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateHandler;->mAllDays:Ljava/util/List;

    .line 39
    new-instance v16, Ljava/util/ArrayList;

    const/16 v17, 0x1f

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateHandler;->mDays:Ljava/util/List;

    .line 41
    new-instance v16, Ljava/util/ArrayList;

    const/16 v17, 0xd

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateHandler;->mMonths:Ljava/util/List;

    .line 43
    new-instance v16, Ljava/util/ArrayList;

    const/16 v17, 0x64

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateHandler;->mYears:Ljava/util/List;

    .line 47
    if-nez p3, :cond_0

    .line 48
    new-instance v16, Ljava/lang/NullPointerException;

    const-string v17, "months should not be null"

    invoke-direct/range {v16 .. v17}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 54
    .local v6, calendar:Ljava/util/Calendar;
    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/text/DateFormat$Field;->ofCalendarField(I)Ljava/text/DateFormat$Field;

    move-result-object v7

    .line 55
    .local v7, calendarField:Ljava/text/DateFormat$Field;
    new-instance v11, Ljava/text/FieldPosition;

    invoke-direct {v11, v7}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 56
    .local v11, fieldPosition:Ljava/text/FieldPosition;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v9

    .line 58
    .local v9, dateFormat:Ljava/text/DateFormat;
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    const/16 v16, 0x1f

    move v0, v12

    move/from16 v1, v16

    if-gt v0, v1, :cond_1

    .line 59
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v13, label:Ljava/lang/StringBuffer;
    const/16 v16, 0x7d0

    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 61
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 62
    .local v8, date:Ljava/util/Date;
    invoke-virtual {v9, v8, v13, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 64
    invoke-virtual {v11}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    .line 65
    .local v5, beginIndex:I
    invoke-virtual {v11}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v10

    .line 67
    .local v10, endIndex:I
    invoke-virtual {v13, v5, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, asString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateHandler;->mAllDays:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 71
    .end local v4           #asString:Ljava/lang/String;
    .end local v5           #beginIndex:I
    .end local v8           #date:Ljava/util/Date;
    .end local v10           #endIndex:I
    .end local v13           #label:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v16, 0x5

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    .line 72
    .local v14, lastSelectable:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateHandler;->mDays:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateHandler;->mAllDays:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateHandler;->mMonths:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v15

    .line 78
    .local v15, nf:Ljava/text/NumberFormat;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 79
    move/from16 v12, p1

    :goto_1
    move v0, v12

    move/from16 v1, p2

    if-gt v0, v1, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateHandler;->mYears:Ljava/util/List;

    move-object/from16 v16, v0

    move v0, v12

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object v0, v15

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method public adjustMaxDay(I)Z
    .locals 4
    .parameter "maxDay"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, adjusted:Z
    iget-object v1, p0, Landroid/widget/DateHandler;->mDays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 96
    iget-object v1, p0, Landroid/widget/DateHandler;->mDays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 97
    iget-object v1, p0, Landroid/widget/DateHandler;->mDays:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/DateHandler;->mAllDays:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_0
    return v0
.end method

.method public getDays()Ljava/util/List;
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
    .line 118
    iget-object v0, p0, Landroid/widget/DateHandler;->mDays:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonths()Ljava/util/List;
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
    .line 109
    iget-object v0, p0, Landroid/widget/DateHandler;->mMonths:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getYears()Ljava/util/List;
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
    .line 127
    iget-object v0, p0, Landroid/widget/DateHandler;->mYears:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
