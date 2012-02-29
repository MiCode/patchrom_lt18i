.class public Landroid/pim/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardEntry$Property;,
        Landroid/pim/vcard/VCardEntry$PhotoData;,
        Landroid/pim/vcard/VCardEntry$ImData;,
        Landroid/pim/vcard/VCardEntry$OrganizationData;,
        Landroid/pim/vcard/VCardEntry$PostalData;,
        Landroid/pim/vcard/VCardEntry$EmailData;,
        Landroid/pim/vcard/VCardEntry$PhoneData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardEntry"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnniversary:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mFormattedName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNickNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticFullName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 70
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 483
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardEntry;-><init>(I)V

    .line 484
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 488
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 0
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput p1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    .line 492
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 493
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 528
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$EmailData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private addIm(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "propValue"
    .parameter "isPrimary"

    .prologue
    .line 672
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 675
    :cond_0
    iget-object v6, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    .line 550
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 553
    :cond_0
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 1
    .parameter "nickName"

    .prologue
    .line 521
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    .line 524
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .parameter "note"

    .prologue
    .line 679
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 682
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 496
    iget-object v8, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 497
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, trimed:Ljava/lang/String;
    const/4 v8, 0x6

    if-eq p1, v8, :cond_1

    iget v8, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v8}, Landroid/pim/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 503
    :cond_1
    move-object v2, v7

    .line 516
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/pim/vcard/VCardEntry$PhoneData;

    invoke-direct {v6, p1, v2, p3, p4}, Landroid/pim/vcard/VCardEntry$PhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 517
    .local v6, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    iget-object v8, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    return-void

    .line 505
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v6           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 506
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 507
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 508
    .local v1, ch:C
    const/16 v8, 0x30

    if-gt v8, v1, :cond_3

    const/16 v8, 0x39

    if-le v1, v8, :cond_4

    :cond_3
    if-nez v4, :cond_5

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_5

    .line 509
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 513
    .end local v1           #ch:C
    :cond_6
    iget v8, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v3

    .line 514
    .local v3, formattingType:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 686
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 689
    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardEntry$PhotoData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/pim/vcard/VCardEntry$PhotoData;-><init>(ILjava/lang/String;[BZ)V

    .line 690
    .local v0, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$PostalData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$PostalData;-><init>(ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Landroid/pim/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 1377
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1382
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 562
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 564
    const-string v5, "VCardEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 570
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 574
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 576
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1074
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1092
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1093
    const-string v0, ""

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1095
    :cond_1
    return-void

    .line 1075
    :cond_2
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1076
    :cond_3
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    iget-object v4, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1078
    :cond_4
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1080
    :cond_5
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1082
    :cond_6
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1083
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$EmailData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1084
    :cond_7
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1085
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhoneData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1086
    :cond_8
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1087
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    iget v1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1088
    :cond_9
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1089
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 736
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 740
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v2, :cond_1

    .line 755
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 743
    .restart local v0       #size:I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 744
    const/4 v0, 0x5

    .line 747
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 753
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 749
    :pswitch_0
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    .line 750
    :pswitch_1
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    .line 751
    :pswitch_2
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    .line 752
    :pswitch_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    goto :goto_1

    .line 747
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 14
    .parameter "type"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p2, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 590
    .local v7, phoneticName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 591
    sget-object p2, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 595
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    .line 596
    .local v13, size:I
    packed-switch v13, :pswitch_data_0

    .line 608
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 611
    .local v4, companyName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v9, builder:Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 613
    const/4 v2, 0x1

    if-le v10, v2, :cond_1

    .line 614
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    :cond_1
    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 598
    .end local v4           #companyName:Ljava/lang/String;
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_0
    const-string v4, ""

    .line 599
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 621
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v5, departmentName:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 624
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 643
    :goto_2
    return-void

    .line 603
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .restart local p3       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 604
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 605
    .restart local v5       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 618
    .end local v5           #departmentName:Ljava/lang/String;
    .end local p3           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .restart local v9       #builder:Ljava/lang/StringBuilder;
    .restart local v10       #i:I
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #departmentName:Ljava/lang/String;
    goto :goto_1

    .line 627
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    :cond_3
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 630
    .local v12, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v2, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 634
    iput-object v4, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 635
    iput-object v5, v12, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    .line 636
    move/from16 v0, p4

    move-object v1, v12

    iput-boolean v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    goto :goto_2

    .line 642
    .end local v12           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_5
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 765
    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    if-lt v4, v8, :cond_0

    .line 780
    if-le v4, v10, :cond_2

    .line 781
    const/4 v4, 0x3

    .line 784
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 785
    const/4 v3, 0x1

    .line 786
    .local v3, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 787
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 788
    const/4 v3, 0x0

    .line 792
    :cond_3
    if-eqz v3, :cond_7

    .line 793
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, namesArray:[Ljava/lang/String;
    array-length v1, v2

    .line 795
    .local v1, nameArrayLength:I
    if-ne v1, v10, :cond_5

    .line 797
    aget-object v5, v2, v7

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    .line 798
    aget-object v5, v2, v8

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 799
    aget-object v5, v2, v9

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_0

    .line 786
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    .restart local v1       #nameArrayLength:I
    .restart local v2       #namesArray:[Ljava/lang/String;
    :cond_5
    if-ne v1, v9, :cond_6

    .line 803
    aget-object v5, v2, v7

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    .line 804
    aget-object v5, v2, v8

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_0

    .line 806
    :cond_6
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_0

    .line 812
    .end local v0           #i:I
    .end local v1           #nameArrayLength:I
    .end local v2           #namesArray:[Ljava/lang/String;
    .end local v3           #onlyFirstElemIsNonEmpty:Z
    :cond_7
    packed-switch v4, :pswitch_data_0

    .line 816
    :goto_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 814
    :pswitch_0
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 815
    :pswitch_1
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_2

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    .line 656
    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 668
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 660
    .local v8, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v0, v8, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 661
    iput-object p1, v8, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    goto :goto_0

    .end local v8           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_2
    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    .line 667
    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1403
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1404
    .local v3, size:I
    if-le v3, v6, :cond_2

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1406
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1407
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1408
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_0

    .line 1410
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1413
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1417
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_1
    return-object v5

    .line 1414
    .restart local p0
    :cond_2
    if-ne v3, v6, :cond_3

    .line 1415
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_1

    .line 1417
    .restart local p0
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method private nameFieldsAreEmpty()Z
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 704
    iget v3, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 712
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 714
    const-string v3, "VCardEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 720
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 721
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 722
    const/4 v0, 0x3

    .line 724
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 727
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 725
    :pswitch_0
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 726
    :pswitch_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_1

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addProperty(Landroid/pim/vcard/VCardEntry$Property;)V
    .locals 27
    .parameter "property"

    .prologue
    .line 821
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$000(Landroid/pim/vcard/VCardEntry$Property;)Ljava/lang/String;

    move-result-object v19

    .line 822
    .local v19, propName:Ljava/lang/String;
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$100(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/Map;

    move-result-object v15

    .line 823
    .local v15, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$200(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/List;

    move-result-object v20

    .line 824
    .local v20, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyBytes:[B
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$300(Landroid/pim/vcard/VCardEntry$Property;)[B

    move-result-object v18

    .line 826
    .local v18, propBytes:[B
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1059
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 829
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, propValue:Ljava/lang/String;
    const-string v5, "VERSION"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 833
    const-string v5, "FN"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 834
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_2
    const-string v5, "NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 838
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_0

    .line 839
    :cond_3
    const-string v5, "N"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 841
    :cond_4
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 842
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_0

    .line 843
    :cond_5
    const-string v5, "NICKNAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 845
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_7
    const-string v5, "SOUND"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 847
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 848
    .local v21, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_0

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .line 856
    .local v17, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 860
    .end local v17           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_8
    const-string v5, "ADR"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 861
    const/16 v26, 0x1

    .line 862
    .local v26, valuesAreAllEmpty:Z
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 863
    .local v25, value:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 864
    const/16 v26, 0x0

    .line 868
    .end local v25           #value:Ljava/lang/String;
    :cond_a
    if-nez v26, :cond_0

    .line 872
    const/4 v8, -0x1

    .line 873
    .local v8, type:I
    const-string v14, ""

    .line 874
    .local v14, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 875
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 876
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_11

    .line 877
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_b
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 878
    .local v23, typeString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 879
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 880
    const/4 v10, 0x1

    goto :goto_1

    .line 881
    :cond_c
    const-string v5, "HOME"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 882
    const/4 v8, 0x1

    .line 883
    const-string v14, ""

    goto :goto_1

    .line 884
    :cond_d
    const-string v5, "WORK"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "COMPANY"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 889
    :cond_e
    const/4 v8, 0x2

    .line 890
    const-string v14, ""

    goto :goto_1

    .line 891
    :cond_f
    const-string v5, "PARCEL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "DOM"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "INTL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 896
    const-string v5, "X-"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-gez v8, :cond_10

    .line 897
    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 901
    :cond_10
    const/4 v8, 0x0

    .line 902
    move-object/from16 v14, v23

    goto :goto_1

    .line 907
    .end local v23           #typeString:Ljava/lang/String;
    :cond_11
    if-gez v8, :cond_12

    .line 908
    const/4 v8, 0x1

    .line 911
    :cond_12
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v20

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 912
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #label:Ljava/lang/String;
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v26           #valuesAreAllEmpty:Z
    :cond_13
    const-string v5, "EMAIL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 913
    const/4 v8, -0x1

    .line 914
    .restart local v8       #type:I
    const/4 v14, 0x0

    .line 915
    .restart local v14       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 916
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 917
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_19

    .line 918
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 919
    .restart local v23       #typeString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    .line 920
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 921
    const/4 v10, 0x1

    goto :goto_2

    .line 922
    :cond_14
    const-string v5, "HOME"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 923
    const/4 v8, 0x1

    goto :goto_2

    .line 924
    :cond_15
    const-string v5, "WORK"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 925
    const/4 v8, 0x2

    goto :goto_2

    .line 926
    :cond_16
    const-string v5, "CELL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 927
    const/4 v8, 0x4

    goto :goto_2

    .line 929
    :cond_17
    const-string v5, "X-"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    if-gez v8, :cond_18

    .line 930
    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 935
    :cond_18
    const/4 v8, 0x0

    .line 936
    move-object/from16 v14, v23

    goto :goto_2

    .line 940
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #typeString:Ljava/lang/String;
    :cond_19
    if-gez v8, :cond_1a

    .line 941
    const/4 v8, 0x3

    .line 943
    :cond_1a
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 944
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1b
    const-string v5, "ORG"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 946
    const/4 v8, 0x1

    .line 947
    .restart local v8       #type:I
    const/4 v10, 0x0

    .line 948
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 949
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_1d

    .line 950
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_1c
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 951
    .restart local v23       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 952
    const/4 v10, 0x1

    goto :goto_3

    .line 956
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #typeString:Ljava/lang/String;
    :cond_1d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v20

    move-object v3, v15

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 957
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1e
    const-string v5, "TITLE"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 958
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 959
    :cond_1f
    const-string v5, "ROLE"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 962
    const-string v5, "PHOTO"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "LOGO"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 964
    :cond_20
    const-string v5, "VALUE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    .line 965
    .local v16, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v16, :cond_21

    const-string v5, "URL"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 968
    :cond_21
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 969
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 970
    .local v12, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 971
    .restart local v10       #isPrimary:Z
    if-eqz v21, :cond_24

    .line 972
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_22
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 973
    .local v24, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 974
    const/4 v10, 0x1

    goto :goto_4

    .line 975
    :cond_23
    if-nez v12, :cond_22

    .line 976
    move-object/from16 v12, v24

    goto :goto_4

    .line 980
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v24           #typeValue:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v18

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 982
    .end local v10           #isPrimary:Z
    .end local v12           #formatName:Ljava/lang/String;
    .end local v16           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_25
    const-string v5, "TEL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 983
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 984
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v21

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 988
    .local v22, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_26

    .line 989
    check-cast v22, Ljava/lang/Integer;

    .end local v22           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 990
    .restart local v8       #type:I
    const/4 v14, 0x0

    .line 997
    .restart local v14       #label:Ljava/lang/String;
    :goto_5
    if-eqz v21, :cond_27

    const-string v5, "PREF"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 998
    const/4 v10, 0x1

    .line 1002
    .restart local v10       #isPrimary:Z
    :goto_6
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v14

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 992
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .restart local v22       #typeObject:Ljava/lang/Object;
    :cond_26
    const/4 v8, 0x0

    .line 993
    .restart local v8       #type:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #label:Ljava/lang/String;
    goto :goto_5

    .line 1000
    .end local v22           #typeObject:Ljava/lang/Object;
    :cond_27
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_6

    .line 1003
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v14           #label:Ljava/lang/String;
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_28
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1005
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 1006
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x7

    .line 1008
    .restart local v8       #type:I
    if-eqz v21, :cond_29

    const-string v5, "PREF"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1009
    const/4 v10, 0x1

    .line 1013
    .restart local v10       #isPrimary:Z
    :goto_7
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v9

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1011
    .end local v10           #isPrimary:Z
    :cond_29
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_7

    .line 1014
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2a
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1015
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1016
    .local v6, protocol:I
    const/4 v10, 0x0

    .line 1017
    .restart local v10       #isPrimary:Z
    const/4 v8, -0x1

    .line 1018
    .restart local v8       #type:I
    const-string v5, "TYPE"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    .line 1019
    .restart local v21       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v21, :cond_2e

    .line 1020
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_2b
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1021
    .restart local v23       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1022
    const/4 v10, 0x1

    goto :goto_8

    .line 1023
    :cond_2c
    if-gez v8, :cond_2b

    .line 1024
    const-string v5, "HOME"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1025
    const/4 v8, 0x1

    goto :goto_8

    .line 1026
    :cond_2d
    const-string v5, "WORK"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1027
    const/4 v8, 0x2

    goto :goto_8

    .line 1032
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #typeString:Ljava/lang/String;
    :cond_2e
    if-gez v8, :cond_2f

    .line 1033
    const/4 v8, 0x1

    .line 1035
    :cond_2f
    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/pim/vcard/VCardEntry;->addIm(ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 1036
    .end local v6           #protocol:I
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v21           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local p1
    :cond_30
    const-string v5, "NOTE"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1037
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    :cond_31
    const-string v5, "URL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_32

    .line 1040
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 1042
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1043
    :cond_33
    const-string v5, "BDAY"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1044
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_0

    .line 1045
    :cond_34
    const-string v5, "ANNIVERSARY"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1046
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    goto/16 :goto_0

    .line 1047
    :cond_35
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1048
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1049
    :cond_36
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1050
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1051
    :cond_37
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1052
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1053
    :cond_38
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1054
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1056
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public consolidateFields()V
    .locals 1

    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1103
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    .line 1106
    :cond_0
    return-void
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1511
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1513
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
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
    .line 1470
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
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
    .line 1478
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
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
    .line 1506
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 1

    .prologue
    .line 1399
    invoke-virtual {p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 31
    .parameter "resolver"

    .prologue
    .line 1109
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1115
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 1116
    .local v20, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 1117
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1118
    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1121
    const-string v3, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1122
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "sourceid"

    aput-object v6, v5, v3

    const-string/jumbo v6, "title=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "System Group: My Contacts"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1127
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1131
    :cond_0
    if-eqz v10, :cond_1

    .line 1132
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1140
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-direct/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1143
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1144
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1145
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1147
    const-string v3, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1148
    const-string v3, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1149
    const-string v3, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1150
    const-string v3, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1151
    const-string v3, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1156
    :cond_2
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1157
    const-string v3, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1158
    const-string v3, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1163
    :cond_3
    :goto_1
    const-string v3, "data1"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1164
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1169
    .local v21, nickName:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1170
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1171
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1172
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1173
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1174
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1131
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #nickName:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_5

    .line 1132
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 1137
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "account_name"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1138
    const-string v3, "account_type"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 1159
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1160
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1178
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_b

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 1180
    .local v25, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1181
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1182
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1184
    const-string v3, "data2"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1185
    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v3, v0

    if-nez v3, :cond_9

    .line 1186
    const-string v3, "data3"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1188
    :cond_9
    const-string v3, "data1"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1189
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 1190
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1192
    :cond_a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1196
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v25           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_11

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 1198
    .local v24, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1199
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1200
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1201
    const-string v3, "data2"

    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1202
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 1203
    const-string v3, "data1"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1205
    :cond_c
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_d

    .line 1206
    const-string v3, "data5"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1208
    :cond_d
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_e

    .line 1209
    const-string v3, "data4"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1211
    :cond_e
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_f

    .line 1212
    const-string v3, "data8"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1214
    :cond_f
    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_10

    .line 1215
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1217
    :cond_10
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1221
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_14

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 1223
    .local v14, emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1224
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1225
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1227
    const-string v3, "data2"

    iget v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1228
    iget v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v3, :cond_12

    .line 1229
    const-string v3, "data3"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1231
    :cond_12
    const-string v3, "data1"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1232
    iget-boolean v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v3, :cond_13

    .line 1233
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1235
    :cond_13
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1239
    .end local v14           #emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_15

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 1241
    .local v27, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1242
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v3, v0

    move v0, v3

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/pim/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V

    .line 1244
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1248
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_18

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/pim/vcard/VCardEntry$ImData;

    .line 1250
    .local v18, imData:Landroid/pim/vcard/VCardEntry$ImData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1251
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1252
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1253
    const-string v3, "data2"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1254
    const-string v3, "data5"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1255
    const-string v3, "data1"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1256
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    .line 1257
    const-string v3, "data6"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1259
    :cond_16
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_17

    .line 1260
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1262
    :cond_17
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1266
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #imData:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_19

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1268
    .local v22, note:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1269
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1270
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1271
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1272
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1276
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #note:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1b

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/pim/vcard/VCardEntry$PhotoData;

    .line 1278
    .local v26, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1279
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1280
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1281
    const-string v3, "data15"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1282
    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_1a

    .line 1283
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1285
    :cond_1a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1289
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1c

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1291
    .local v30, website:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1292
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1293
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1294
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1297
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1298
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1302
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v30           #website:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1303
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1304
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1305
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1306
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1307
    const-string v3, "data2"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1308
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1312
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1313
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1314
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1315
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1316
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1317
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_24

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p0
    :cond_1f
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1322
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    .line 1323
    .local v29, size:I
    const/4 v3, 0x2

    move/from16 v0, v29

    move v1, v3

    if-lt v0, v1, :cond_1f

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1325
    const/16 v3, 0x10

    move/from16 v0, v29

    move v1, v3

    if-le v0, v1, :cond_20

    .line 1326
    const/16 v29, 0x10

    .line 1327
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-interface {v11, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1331
    :cond_20
    const/4 v15, 0x0

    .line 1332
    .local v15, i:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1333
    .local v12, customPropertyValue:Ljava/lang/String;
    if-nez v15, :cond_22

    .line 1334
    move-object/from16 v19, v12

    .line 1335
    .local v19, mimeType:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1336
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1337
    const-string v3, "mimetype"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1344
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_21
    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1339
    :cond_22
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_d

    .line 1346
    .end local v12           #customPropertyValue:Ljava/lang/String;
    :cond_23
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1350
    .end local v11           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v29           #size:I
    :cond_24
    if-eqz v20, :cond_25

    .line 1351
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1352
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1353
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1354
    const-string v3, "group_sourceid"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1355
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_25
    :try_start_1
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v28

    .line 1364
    .local v28, results:[Landroid/content/ContentProviderResult;
    if-eqz v28, :cond_26

    move-object/from16 v0, v28

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    aget-object v3, v28, v3

    if-nez v3, :cond_27

    :cond_26
    const/4 v3, 0x0

    .line 1372
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :goto_e
    return-object v3

    .line 1364
    .restart local v28       #results:[Landroid/content/ContentProviderResult;
    :cond_27
    const/4 v3, 0x0

    aget-object v3, v28, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    .line 1367
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 1368
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v3, 0x0

    goto :goto_e

    .line 1370
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 1371
    .local v13, e:Landroid/content/OperationApplicationException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v3, 0x0

    goto :goto_e
.end method
