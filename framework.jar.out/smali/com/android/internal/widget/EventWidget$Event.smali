.class Lcom/android/internal/widget/EventWidget$Event;
.super Ljava/lang/Object;
.source "EventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EventWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field private mAmount:I

.field private mEventRowSeperatorView:Landroid/view/View;

.field private mEventRowView:Landroid/view/View;

.field private mIconId:I

.field private mTextId:I

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/EventWidget;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/EventWidget;II)V
    .locals 0
    .parameter
    .parameter "iconId"
    .parameter "textId"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/widget/EventWidget$Event;->this$0:Lcom/android/internal/widget/EventWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Lcom/android/internal/widget/EventWidget$Event;->mIconId:I

    .line 255
    iput p3, p0, Lcom/android/internal/widget/EventWidget$Event;->mTextId:I

    .line 256
    return-void
.end method

.method private createSpacing()Landroid/view/View;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 273
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/EventWidget$Event;->this$0:Lcom/android/internal/widget/EventWidget;

    invoke-virtual {v1}, Lcom/android/internal/widget/EventWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, sep:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 276
    return-object v0
.end method


# virtual methods
.method public addToView(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "eventWidget"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->this$0:Lcom/android/internal/widget/EventWidget;

    invoke-virtual {v0}, Lcom/android/internal/widget/EventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090074

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    const v1, 0x1020246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/EventWidget$Event;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    const v1, 0x1020247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mTextView:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/EventWidget$Event;->this$0:Lcom/android/internal/widget/EventWidget;

    invoke-virtual {v1}, Lcom/android/internal/widget/EventWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EventWidget$Event;->mTextId:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/widget/EventWidget$Event;->mAmount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/widget/EventWidget$Event;->createSpacing()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowSeperatorView:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowSeperatorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public setAmount(I)V
    .locals 7
    .parameter "amount"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 280
    iput p1, p0, Lcom/android/internal/widget/EventWidget$Event;->mAmount:I

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/EventWidget$Event;->this$0:Lcom/android/internal/widget/EventWidget;

    invoke-virtual {v1}, Lcom/android/internal/widget/EventWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EventWidget$Event;->mTextId:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/widget/EventWidget$Event;->mAmount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mAmount:I

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowSeperatorView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowSeperatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 294
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$Event;->mEventRowSeperatorView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
