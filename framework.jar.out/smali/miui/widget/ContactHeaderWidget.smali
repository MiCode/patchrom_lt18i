.class public Lmiui/widget/ContactHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "ContactHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ContactHeaderWidget$QueryHandler;,
        Lmiui/widget/ContactHeaderWidget$PhotoQuery;,
        Lmiui/widget/ContactHeaderWidget$OrganizationQuery;,
        Lmiui/widget/ContactHeaderWidget$ContactQuery;,
        Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;
    }
.end annotation


# static fields
.field protected static final CONTACT_LOOKUP_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final EMAIL_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final EMAIL_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field protected static final PHONE_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final PHONE_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final ROUND_CORNER_XY:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ContactHeaderWidget"

.field private static final TOKEN_COMPANY_TITLE_QUERY:I = 0x4

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHOTO_QUERY:I = 0x3


# instance fields
.field private mAggregateBadge:Landroid/view/View;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDisplayNameViewAlt:Landroid/widget/TextView;

.field private mEditView:Landroid/widget/ImageView;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mListener:Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;

.field private mNoPhotoResource:I

.field private mOrganizationCompany:Landroid/widget/TextView;

.field private mOrganizationTitle:Landroid/widget/TextView;

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/QuickContactBadge;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

.field private mSelfStatusView:Landroid/widget/TextView;

.field private mStarImage:Landroid/widget/ImageView;

.field private mStarredView:Landroid/widget/CheckBox;

.field private mStatusAttributionView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;

.field private mUnknownContactLocation:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "lookup"

    const-string v5, "_id"

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "lookup"

    aput-object v6, v0, v3

    sput-object v0, Lmiui/widget/ContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 165
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v6, v0, v3

    sput-object v0, Lmiui/widget/ContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 174
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    sput-object v0, Lmiui/widget/ContactHeaderWidget;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 198
    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 200
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x6030002

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 202
    const v1, 0x60d0008

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    .line 203
    const v1, 0x60d0009

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    .line 204
    const v1, 0x60d0007

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    .line 206
    const v1, 0x60d000b

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    .line 207
    const v1, 0x60d000c

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    .line 208
    const v1, 0x60d0012

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    .line 209
    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v1, 0x60d0006

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mStarImage:Landroid/widget/ImageView;

    .line 211
    const v1, 0x60d0013

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    .line 212
    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v1, 0x60d0005

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 215
    const v1, 0x60d000a

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    .line 217
    const v1, 0x60d000e

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;

    .line 218
    const v1, 0x60d000f

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;

    .line 219
    const v1, 0x60d0010

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    .line 220
    const v1, 0x60d0011

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    .line 221
    const v1, 0x60d000d

    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    .line 223
    const v1, 0x602024a

    iput v1, p0, Lmiui/widget/ContactHeaderWidget;->mNoPhotoResource:I

    .line 225
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ContactHeaderWidget;)Lmiui/widget/ContactHeaderWidget$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lmiui/widget/ContactHeaderWidget;->startContactOrganizationQuery(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lmiui/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$600(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mOrganizationTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/ContactHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mOrganizationCompany:Landroid/widget/TextView;

    return-object v0
.end method

.method private bindFromContactUriInternal(Landroid/net/Uri;Z)V
    .locals 0
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    .line 561
    iput-object p1, p0, Lmiui/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 562
    invoke-direct {p0, p1, p2}, Lmiui/widget/ContactHeaderWidget;->startContactQuery(Landroid/net/Uri;Z)V

    .line 563
    return-void
.end method

.method private loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "options"

    .prologue
    .line 816
    iget v0, p0, Lmiui/widget/ContactHeaderWidget;->mNoPhotoResource:I

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/widget/ContactHeaderWidget;->mNoPhotoResource:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private performDisplayNameClick()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mListener:Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mListener:Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;->onDisplayNameClick(Landroid/view/View;)V

    .line 251
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mListener:Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mListener:Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-interface {v0, v1}, Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;->onPhotoClick(Landroid/view/View;)V

    .line 245
    :cond_0
    return-void
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    .prologue
    .line 684
    new-instance v0, Lmiui/widget/ContactHeaderWidget$QueryHandler;

    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ContactHeaderWidget$QueryHandler;-><init>(Lmiui/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    .line 685
    return-void
.end method

.method private startContactOrganizationQuery(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v6, 0x0

    .line 637
    if-eqz p2, :cond_0

    .line 638
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 641
    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x4

    sget-object v4, Lmiui/widget/ContactHeaderWidget$OrganizationQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "mimetype=\'vnd.android.cursor.item/organization\'"

    move-object v2, p1

    move-object v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lmiui/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "contactUri"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 627
    if-eqz p2, :cond_0

    .line 628
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 631
    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lmiui/widget/ContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lmiui/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private updateStarred()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 808
    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 809
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 810
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "starred"

    iget-object v2, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 811
    iget-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lmiui/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindContactInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "c"

    .prologue
    .line 691
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 692
    .local v11, displayName:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 693
    .local v15, phoneticName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 695
    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 696
    .local v20, starred:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStarImage:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v20, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    const/4 v5, 0x6

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 701
    const/4 v5, 0x6

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 702
    .local v17, presence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    invoke-static/range {v17 .. v17}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    .end local v17           #presence:I
    :goto_2
    const/4 v5, 0x7

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 710
    .local v21, status:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    const/16 v22, 0x0

    .line 716
    .local v22, timestamp:Ljava/lang/CharSequence;
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 717
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 721
    .local v3, date:J
    const/high16 v9, 0x4

    .line 723
    .local v9, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v22

    .line 727
    .end local v3           #date:J
    .end local v9           #flags:I
    :cond_0
    const/4 v13, 0x0

    .line 729
    .local v13, label:Ljava/lang/String;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 730
    const/16 v5, 0x9

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 731
    .local v18, resPackage:Ljava/lang/String;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 733
    .local v14, labelResource:I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 734
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ContactHeaderWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 746
    .local v19, resources:Landroid/content/res/Resources;
    :goto_3
    if-eqz v19, :cond_1

    .line 748
    :try_start_0
    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 757
    .end local v14           #labelResource:I
    .end local v18           #resPackage:Ljava/lang/String;
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_4
    if-eqz v22, :cond_6

    if-eqz v13, :cond_6

    .line 758
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x609000c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    const/4 v8, 0x1

    aput-object v13, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 770
    .local v10, attribution:Ljava/lang/CharSequence;
    :goto_5
    if-eqz v10, :cond_9

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    .end local v10           #attribution:Ljava/lang/CharSequence;
    .end local v13           #label:Ljava/lang/String;
    .end local v22           #timestamp:Ljava/lang/CharSequence;
    :goto_7
    return-void

    .line 695
    .end local v20           #starred:Z
    .end local v21           #status:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_0

    .line 697
    .restart local v20       #starred:Z
    :cond_3
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 705
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 736
    .restart local v13       #label:Ljava/lang/String;
    .restart local v14       #labelResource:I
    .restart local v18       #resPackage:Ljava/lang/String;
    .restart local v21       #status:Ljava/lang/String;
    .restart local v22       #timestamp:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 738
    .local v16, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .restart local v19       #resources:Landroid/content/res/Resources;
    goto :goto_3

    .line 739
    .end local v19           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v12

    .line 740
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ContactHeaderWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact status update resource package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/16 v19, 0x0

    .restart local v19       #resources:Landroid/content/res/Resources;
    goto/16 :goto_3

    .line 749
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v12

    .line 750
    .local v12, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "ContactHeaderWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact status update resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 761
    .end local v12           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v14           #labelResource:I
    .end local v18           #resPackage:Ljava/lang/String;
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_6
    if-nez v22, :cond_7

    if-eqz v13, :cond_7

    .line 762
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ContactHeaderWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x6090009

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 765
    .end local v10           #attribution:Ljava/lang/CharSequence;
    :cond_7
    if-eqz v22, :cond_8

    .line 766
    move-object/from16 v10, v22

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 768
    .end local v10           #attribution:Ljava/lang/CharSequence;
    :cond_8
    const/4 v10, 0x0

    .restart local v10       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 775
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 781
    .end local v10           #attribution:Ljava/lang/CharSequence;
    .end local v13           #label:Ljava/lang/String;
    .end local v22           #timestamp:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public bindFromContactLookupUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V

    .line 551
    return-void
.end method

.method public bindFromEmail(Ljava/lang/String;)V
    .locals 8
    .parameter "emailAddress"

    .prologue
    const/4 v5, 0x0

    .line 574
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 576
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/widget/ContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lmiui/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public bindFromPhoneNumber(Ljava/lang/String;)V
    .locals 8
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 590
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 592
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/widget/ContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lmiui/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public bindFromUnKnownNumber(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 598
    invoke-static {p1}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, presentation:I
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v2, :cond_0

    .line 601
    invoke-static {v1}, Lmiui/telephony/Connection;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 614
    :goto_0
    invoke-virtual {p0, v4}, Lmiui/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 615
    invoke-direct {p0, v4}, Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 616
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0, p1, v4}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, p0, Lmiui/widget/ContactHeaderWidget;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
    iget-object v2, p0, Lmiui/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v2, p0, Lmiui/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v2, p0, Lmiui/widget/ContactHeaderWidget;->mUnknownContactLocation:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableClickListeners()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method public getDisplayNmae()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isStared()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 792
    :sswitch_0
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->updateStarred()V

    goto :goto_0

    .line 796
    :sswitch_1
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->performPhotoClick()V

    goto :goto_0

    .line 800
    :sswitch_2
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->performDisplayNameClick()V

    goto :goto_0

    .line 789
    :sswitch_data_0
    .sparse-switch
        0x60d0005 -> :sswitch_1
        0x60d0008 -> :sswitch_2
        0x60d0012 -> :sswitch_0
    .end sparse-switch
.end method

.method public setContactHeaderListener(Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 238
    iput-object p1, p0, Lmiui/widget/ContactHeaderWidget;->mListener:Lmiui/widget/ContactHeaderWidget$ContactHeaderListener;

    .line 239
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/widget/ContactHeaderWidget;->setContactUri(Landroid/net/Uri;Z)V

    .line 445
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 451
    iput-object p1, p0, Lmiui/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 452
    if-eqz p2, :cond_0

    .line 453
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 455
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "displayName"
    .parameter "phoneticName"

    .prologue
    .line 492
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 539
    iput-object p1, p0, Lmiui/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public setOnEditListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 461
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    return-void
.end method

.method public setOnStarChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 468
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 469
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 476
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 477
    return-void
.end method

.method public setPresence(I)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 437
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    return-void
.end method

.method public setSelectedContactsAppTabIndex(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 393
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setSelectedContactsAppTabIndex(I)V

    .line 394
    return-void
.end method

.method public setSelfStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mSelfStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSocialSnippet(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "snippet"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 520
    if-nez p1, :cond_0

    .line 521
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameViewAlt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStared(Z)V
    .locals 1
    .parameter "starred"

    .prologue
    .line 422
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 423
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->updateStarred()V

    .line 424
    return-void
.end method

.method public showAggregateBadge(Z)V
    .locals 2
    .parameter "showBagde"

    .prologue
    .line 400
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    return-void

    .line 400
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showEdit(Z)V
    .locals 2
    .parameter "showEdit"

    .prologue
    .line 414
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mEditView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    return-void

    .line 414
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showStar(Z)V
    .locals 2
    .parameter "showStar"

    .prologue
    .line 407
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 408
    return-void

    .line 407
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected startPhotoQuery(JLandroid/net/Uri;Z)V
    .locals 8
    .parameter "photoId"
    .parameter "lookupKey"
    .parameter "resetQueryHandler"

    .prologue
    const/4 v5, 0x0

    .line 655
    if-eqz p4, :cond_0

    .line 656
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 659
    :cond_0
    iget-object v0, p0, Lmiui/widget/ContactHeaderWidget;->mQueryHandler:Lmiui/widget/ContactHeaderWidget$QueryHandler;

    const/4 v1, 0x3

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/widget/ContactHeaderWidget$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lmiui/widget/ContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public wipeClean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-direct {p0}, Lmiui/widget/ContactHeaderWidget;->resetAsyncQueryHandler()V

    .line 671
    invoke-virtual {p0, v1, v1}, Lmiui/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->setSelfStatus(Ljava/lang/CharSequence;)V

    .line 673
    invoke-direct {p0, v1}, Lmiui/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 674
    invoke-virtual {p0, v1}, Lmiui/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ContactHeaderWidget;->setPresence(I)V

    .line 676
    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 677
    iput-object v1, p0, Lmiui/widget/ContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 678
    return-void
.end method
