.class public Lmiui/util/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LocaleUtils$1;,
        Lmiui/util/LocaleUtils$NameSplitter;,
        Lmiui/util/LocaleUtils$ChineseLocaleUtils;,
        Lmiui/util/LocaleUtils$NameStyle;,
        Lmiui/util/LocaleUtils$LocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static sSingleton:Lmiui/util/LocaleUtils;


# instance fields
.field private mBase:Lmiui/util/LocaleUtils$LocaleUtilsBase;

.field private mLanguage:Ljava/lang/String;

.field private mUtils:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/util/LocaleUtils$LocaleUtilsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 116
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/LocaleUtils;->mUtils:Ljava/util/HashMap;

    .line 122
    new-instance v0, Lmiui/util/LocaleUtils$LocaleUtilsBase;

    invoke-direct {v0, p0, v1}, Lmiui/util/LocaleUtils$LocaleUtilsBase;-><init>(Lmiui/util/LocaleUtils;Lmiui/util/LocaleUtils$1;)V

    iput-object v0, p0, Lmiui/util/LocaleUtils;->mBase:Lmiui/util/LocaleUtils$LocaleUtilsBase;

    .line 127
    invoke-direct {p0, v1}, Lmiui/util/LocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 128
    return-void
.end method

.method private declared-synchronized get(Ljava/lang/Integer;)Lmiui/util/LocaleUtils$LocaleUtilsBase;
    .locals 3
    .parameter "nameStyle"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/util/LocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/LocaleUtils$LocaleUtilsBase;

    .line 146
    .local v0, utils:Lmiui/util/LocaleUtils$LocaleUtilsBase;
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 148
    new-instance v0, Lmiui/util/LocaleUtils$ChineseLocaleUtils;

    .end local v0           #utils:Lmiui/util/LocaleUtils$LocaleUtilsBase;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/util/LocaleUtils$ChineseLocaleUtils;-><init>(Lmiui/util/LocaleUtils;Lmiui/util/LocaleUtils$1;)V

    .line 149
    .restart local v0       #utils:Lmiui/util/LocaleUtils$LocaleUtilsBase;
    iget-object v1, p0, Lmiui/util/LocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lmiui/util/LocaleUtils;->mBase:Lmiui/util/LocaleUtils$LocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 145
    .end local v0           #utils:Lmiui/util/LocaleUtils$LocaleUtilsBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAdjustedStyle(I)I
    .locals 2
    .parameter "nameStyle"

    .prologue
    .line 173
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lmiui/util/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lmiui/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/util/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lmiui/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x3

    .line 177
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private getForSort(Ljava/lang/Integer;)Lmiui/util/LocaleUtils$LocaleUtilsBase;
    .locals 1
    .parameter "nameStyle"

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/util/LocaleUtils;->getAdjustedStyle(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LocaleUtils;->get(Ljava/lang/Integer;)Lmiui/util/LocaleUtils$LocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getIntance()Lmiui/util/LocaleUtils;
    .locals 2

    .prologue
    .line 166
    const-class v0, Lmiui/util/LocaleUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/util/LocaleUtils;->sSingleton:Lmiui/util/LocaleUtils;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Lmiui/util/LocaleUtils;

    invoke-direct {v1}, Lmiui/util/LocaleUtils;-><init>()V

    sput-object v1, Lmiui/util/LocaleUtils;->sSingleton:Lmiui/util/LocaleUtils;

    .line 169
    :cond_0
    sget-object v1, Lmiui/util/LocaleUtils;->sSingleton:Lmiui/util/LocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "currentLocale"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/LocaleUtils;->mLanguage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "displayName"

    .prologue
    .line 139
    invoke-static {p1}, Lmiui/util/LocaleUtils$NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, nameStyle:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/LocaleUtils;->getForSort(Ljava/lang/Integer;)Lmiui/util/LocaleUtils$LocaleUtilsBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmiui/util/LocaleUtils$LocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, s:Ljava/lang/String;
    return-object v1
.end method
