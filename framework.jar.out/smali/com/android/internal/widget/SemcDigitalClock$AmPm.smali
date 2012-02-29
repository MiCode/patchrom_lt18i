.class Lcom/android/internal/widget/SemcDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "SemcDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SemcDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const v0, 0x10201fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
