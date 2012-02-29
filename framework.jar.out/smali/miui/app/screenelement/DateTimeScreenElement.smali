.class public Lmiui/app/screenelement/DateTimeScreenElement;
.super Lmiui/app/screenelement/TextScreenElement;
.source "DateTimeScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field protected mCalendar:Ljava/util/Calendar;

.field private mCurDay:I

.field private mLunarDate:Ljava/lang/String;

.field private mPreValue:J

.field private mText:Ljava/lang/String;

.field private mValue:Lmiui/app/screenelement/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCurDay:I

    .line 22
    const-string/jumbo v0, "value"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mValue:Lmiui/app/screenelement/Expression;

    .line 23
    return-void
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x5

    const-string v8, "NNNN"

    .line 27
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mValue:Lmiui/app/screenelement/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mValue:Lmiui/app/screenelement/Expression;

    iget-object v4, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v3

    double-to-long v3, v3

    move-wide v1, v3

    .line 30
    .local v1, ms:J
    :goto_0
    iget-wide v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mPreValue:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 31
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mText:Ljava/lang/String;

    .line 46
    :goto_1
    return-object v3

    .line 27
    .end local v1           #ms:J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_0

    .line 33
    .restart local v1       #ms:J
    :cond_1
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 35
    iget-object v0, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    .line 36
    .local v0, format:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    const-string v4, "NNNN"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCurDay:I

    if-eq v3, v4, :cond_2

    .line 38
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lmiui/util/LunarDate;->getString(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCurDay:I

    .line 40
    const-string v3, "DateTimeScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get lunar date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_2
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mFormat:Ljava/lang/String;

    const-string v4, "NNNN"

    iget-object v4, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mLunarDate:Ljava/lang/String;

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_3
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mText:Ljava/lang/String;

    .line 45
    iput-wide v1, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mPreValue:J

    .line 46
    iget-object v3, p0, Lmiui/app/screenelement/DateTimeScreenElement;->mText:Ljava/lang/String;

    goto :goto_1
.end method
