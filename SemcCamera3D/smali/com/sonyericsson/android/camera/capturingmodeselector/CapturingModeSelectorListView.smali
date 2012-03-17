.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
.super Landroid/widget/RelativeLayout;
.source "CapturingModeSelectorListView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;
    }
.end annotation


# static fields
.field private static final ATTRS_NUM_COLUMNS:Ljava/lang/String; = "numColumns"

.field private static final ATTRS_NUM_ROWS:Ljava/lang/String; = "numRows"

.field private static final DELAY_MILLIS_ON_SELECTED:I = 0xdc

.field private static final FLAG_LISTREMAKE_ALL:I = -0x1

.field private static final FLAG_LISTREMAKE_LAYOUTLISTS:I = 0x2

.field private static final FLAG_LISTREMAKE_NON:I = 0x0

.field private static final FLAG_LISTREMAKE_VIEWLISTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CapturingModeSelectorListView"


# instance fields
.field private final VIEW_ID_LIST:[I

.field private mCapturingModeViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mListner:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;

.field private mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

.field private mNotShowUnableMode:Z

.field private mNumColumns:I

.field private mNumRows:I

.field private mSensorOrientation:I

.field private mTopLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->VIEW_ID_LIST:[I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mCapturingModeViewList:Ljava/util/ArrayList;

    .line 73
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNotShowUnableMode:Z

    .line 76
    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumColumns:I

    .line 78
    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumRows:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mSensorOrientation:I

    .line 89
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->readAttribute(Landroid/util/AttributeSet;)V

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->init()V

    .line 91
    return-void

    .line 51
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xdt 0x7ft
        0x1t 0x0t 0xdt 0x7ft
        0x2t 0x0t 0xdt 0x7ft
        0x3t 0x0t 0xdt 0x7ft
        0x4t 0x0t 0xdt 0x7ft
        0x5t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mListner:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;

    return-object v0
.end method

.method private createLayouts(I)V
    .locals 4
    .parameter "remakeFlag"

    .prologue
    .line 169
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->createViewList()V

    .line 173
    :cond_0
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->createLinearLayoutList()V

    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->createTopLayout()V

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    .line 187
    :cond_1
    return-void

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 184
    .local v1, linear:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createLinearLayoutList()V
    .locals 10

    .prologue
    .line 233
    iget-object v9, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 235
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getViewCount()I

    move-result v8

    .line 237
    .local v8, viewCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 238
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getView(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    move-result-object v7

    .line 239
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_0

    .line 237
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getRowIndex(I)I

    move-result v6

    .line 244
    .local v6, row:I
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getColumnIndex(I)I

    move-result v0

    .line 246
    .local v0, column:I
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getCurrentNumRows()I

    move-result v9

    if-lt v6, v9, :cond_2

    .line 274
    .end local v0           #column:I
    .end local v6           #row:I
    .end local v7           #view:Landroid/view/View;
    :cond_1
    return-void

    .line 250
    .restart local v0       #column:I
    .restart local v6       #row:I
    .restart local v7       #view:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    .line 251
    .local v3, linear:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_5

    .line 252
    iget-object v9, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #linear:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 257
    .restart local v3       #linear:Landroid/widget/LinearLayout;
    :goto_2
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 258
    .local v4, parent:Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 259
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_3
    move v5, v0

    .line 262
    .local v5, pos:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/camera/capturingmodeselector/util/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v2

    .line 263
    .local v2, isMirroringRequired:Z
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->isPortrait()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 264
    if-nez v2, :cond_4

    .line 265
    const/4 v5, 0x0

    .line 272
    :cond_4
    :goto_3
    invoke-virtual {v3, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 254
    .end local v2           #isMirroringRequired:Z
    .end local v4           #parent:Landroid/view/ViewGroup;
    .end local v5           #pos:I
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->createNewLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 255
    iget-object v9, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mLinearLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    .restart local v2       #isMirroringRequired:Z
    .restart local v4       #parent:Landroid/view/ViewGroup;
    .restart local v5       #pos:I
    :cond_6
    if-eqz v2, :cond_4

    .line 269
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private createModeView(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    .locals 5
    .parameter "position"

    .prologue
    .line 353
    new-instance v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;-><init>(Landroid/content/Context;)V

    .line 355
    .local v2, view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getViewId(I)I

    move-result v0

    .line 358
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 359
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setId(I)V

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNotShowUnableMode:Z

    invoke-virtual {v3, p1, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getModeAttributes(IZ)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v1

    .line 366
    .local v1, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setModeAttributes(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 371
    .end local v1           #modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_1
    return-object v2
.end method

.method private createNewLinearLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 280
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setDirectionality(I)V

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->isPortrait()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 294
    :goto_0
    return-object v0

    .line 290
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 291
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private createTopLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->removeView(Landroid/view/View;)V

    .line 212
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    .line 213
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDirectionality(I)V

    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->addView(Landroid/view/View;)V

    .line 227
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mTopLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private createViewList()V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getModeCount()I

    move-result v2

    .line 194
    .local v2, modeCount:I
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getMaxViewCount(I)I

    move-result v1

    .line 196
    .local v1, maxview:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mCapturingModeViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 199
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->createModeView(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    move-result-object v3

    .line 200
    .local v3, view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v3, p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mCapturingModeViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v3           #view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    :cond_1
    return-void
.end method

.method private getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 4
    .parameter "attrs"
    .parameter "attr"
    .parameter "defValue"

    .prologue
    const/4 v3, 0x0

    .line 109
    move v1, p3

    .line 110
    .local v1, result:I
    invoke-interface {p1, v3, p2, p3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 111
    if-ne v1, p3, :cond_0

    .line 112
    const/4 v2, 0x0

    invoke-interface {p1, v3, p2, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 117
    .end local v0           #id:I
    :cond_0
    return v1
.end method

.method private getColumnIndex(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, result:I
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getCurrentNumColumns()I

    move-result v0

    .line 312
    .local v0, numColumns:I
    if-eqz v0, :cond_0

    .line 313
    rem-int v1, p1, v0

    .line 315
    :cond_0
    return v1
.end method

.method private getCurrentNumColumns()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mSensorOrientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getNumColumns(I)I

    move-result v0

    return v0
.end method

.method private getCurrentNumRows()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mSensorOrientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getNumRows(I)I

    move-result v0

    return v0
.end method

.method private getCurrentVisibleFlag()I
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, result:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getCurrentVisibleFlag()I

    move-result v0

    .line 496
    :cond_0
    return v0
.end method

.method private getMaxViewCount(I)I
    .locals 3
    .parameter "modeCount"

    .prologue
    .line 380
    move v1, p1

    .line 381
    .local v1, result:I
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getTotalPageNum(I)I

    move-result v0

    .line 387
    .local v0, pageNum:I
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getOnePageModeNum()I

    move-result v2

    mul-int v1, v0, v2

    .line 389
    return v1
.end method

.method private getNumColumns()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumColumns:I

    return v0
.end method

.method private getNumColumns(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 405
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getNumRows()I

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getNumColumns()I

    move-result v0

    goto :goto_0
.end method

.method private getNumRows()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumRows:I

    return v0
.end method

.method private getNumRows(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getNumColumns()I

    move-result v0

    .line 436
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getNumRows()I

    move-result v0

    goto :goto_0
.end method

.method private getOnePageModeNum()I
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumColumns:I

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumRows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private getRowIndex(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, result:I
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getCurrentNumColumns()I

    move-result v0

    .line 321
    .local v0, numColumns:I
    if-eqz v0, :cond_0

    .line 322
    div-int v1, p1, v0

    .line 324
    :cond_0
    return v1
.end method

.method private getTotalPageNum(I)I
    .locals 3
    .parameter "count"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getOnePageModeNum()I

    move-result v0

    .line 441
    .local v0, onePageModeNum:I
    const/4 v1, 0x0

    .line 443
    .local v1, result:I
    if-lez p1, :cond_0

    .line 444
    add-int/lit8 v2, p1, -0x1

    div-int/2addr v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 447
    :cond_0
    return v1
.end method

.method private getView(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    .locals 2
    .parameter "position"

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mCapturingModeViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mCapturingModeViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    check-cast v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    .line 302
    .restart local v0       #view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    :cond_0
    return-object v0
.end method

.method private getViewCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mCapturingModeViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getViewId(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 339
    const/4 v0, -0x1

    .line 340
    .local v0, result:I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->VIEW_ID_LIST:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->VIEW_ID_LIST:[I

    aget v0, v1, p1

    .line 344
    :cond_0
    return v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->initValue()V

    .line 125
    return-void
.end method

.method private initValue()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNotShowUnableMode:Z

    .line 131
    return-void
.end method

.method private isPortrait()Z
    .locals 3

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, result:Z
    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mSensorOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 531
    const/4 v0, 0x1

    .line 533
    :cond_0
    return v0
.end method

.method private onModeSelected(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V
    .locals 3
    .parameter "list"
    .parameter "attr"

    .prologue
    .line 556
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$1;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    return-void
.end method

.method private readAttribute(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 97
    const-string v2, "numColumns"

    invoke-direct {p0, p1, v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, numColumn:I
    if-eqz v0, :cond_0

    .line 99
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumColumns:I

    .line 102
    :cond_0
    const-string v2, "numRows"

    invoke-direct {p0, p1, v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, numRow:I
    if-eqz v1, :cond_1

    .line 104
    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNumRows:I

    .line 106
    :cond_1
    return-void
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 458
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getCurrentModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 460
    .local v0, currentModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateViews(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)V

    .line 462
    .end local v0           #currentModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    :cond_0
    return-void
.end method

.method private updateViews(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)V
    .locals 8
    .parameter "modeId"

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getViewCount()I

    move-result v3

    .line 471
    .local v3, num:I
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getCurrentVisibleFlag()I

    move-result v5

    .line 472
    .local v5, type:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 473
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getView(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    move-result-object v6

    .line 474
    .local v6, view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    if-eqz v6, :cond_1

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, enable:Z
    const/4 v4, 0x0

    .line 477
    .local v4, select:Z
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v2

    .line 478
    .local v2, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->isEnable(I)Z

    move-result v0

    .line 480
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 481
    const/4 v4, 0x1

    .line 484
    :cond_0
    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setEnabled(Z)V

    .line 485
    invoke-virtual {v6, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setSelected(Z)V

    .line 486
    iget v7, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mSensorOrientation:I

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setSensorOrientation(I)V

    .line 472
    .end local v0           #enable:Z
    .end local v2           #modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .end local v4           #select:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v6           #view:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
    :cond_2
    return-void
.end method


# virtual methods
.method public getModeAttributes(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 3
    .parameter "position"

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNotShowUnableMode:Z

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getModeAttributes(IZ)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 510
    :cond_0
    return-object v0
.end method

.method public getModeCount()I
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, result:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNotShowUnableMode:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getCount(Z)I

    move-result v0

    .line 332
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    const/4 v1, 0x0

    .line 542
    .local v1, modeId:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;
    if-eqz p1, :cond_0

    .line 543
    instance-of v2, p1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    if-eqz v2, :cond_0

    .line 545
    check-cast p1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v1

    .line 550
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateViews(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)V

    .line 551
    invoke-direct {p0, p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->onModeSelected(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 552
    return-void
.end method

.method public onModeGroupDataChanged()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateLayout(I)V

    .line 569
    return-void
.end method

.method public onModeGroupDataUpdated()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateLayout(I)V

    .line 574
    return-void
.end method

.method public setItemSelectListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mListner:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;

    .line 139
    return-void
.end method

.method public setModeGroup(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->setDataChangeListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup$OnModeGroupDataChangeListner;)V

    .line 147
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateLayout(I)V

    .line 148
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 520
    iput p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mSensorOrientation:I

    .line 521
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateLayout(I)V

    .line 522
    return-void
.end method

.method public setUnableModeValid(Z)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->mNotShowUnableMode:Z

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->onModeGroupDataChanged()V

    .line 153
    return-void
.end method

.method public updateLayout(I)V
    .locals 0
    .parameter "listRemake"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->createLayouts(I)V

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->updateViews()V

    .line 166
    return-void
.end method
