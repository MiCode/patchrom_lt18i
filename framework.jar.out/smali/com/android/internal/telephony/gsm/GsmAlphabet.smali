.class public Lcom/android/internal/telephony/gsm/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MAX_NBR_CACHED_ALPHABETS:I = 0xa

.field private static sAlphabetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            ">;",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCharToGsmExtendedTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCharToGsmTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExtendedDefaultAlphabets:[Lcom/android/internal/telephony/gsm/GsmAlphabet;

.field private static final sGsm7bitAlphabet:Landroid/util/SparseIntArray;

.field private static final sGsmExtendedToCharTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGsmToCharTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastAnalyzedText:Ljava/lang/String;

.field private static sLastCandidateAlphabets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharToGsmExtendedTable:Landroid/util/SparseIntArray;

.field private final mCharToGsmTable:Landroid/util/SparseIntArray;

.field private final mGsmExtendedToCharTable:Landroid/util/SparseIntArray;

.field private final mGsmSpaceChar:I

.field private final mGsmToCharTable:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 58
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmTables:Ljava/util/Map;

    .line 60
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsmToCharTables:Ljava/util/Map;

    .line 62
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmExtendedTables:Ljava/util/Map;

    .line 64
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsmExtendedToCharTables:Ljava/util/Map;

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Lcom/android/internal/telephony/gsm/GsmAlphabet;

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sExtendedDefaultAlphabets:[Lcom/android/internal/telephony/gsm/GsmAlphabet;

    .line 74
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sAlphabetCache:Ljava/util/Map;

    .line 83
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastAnalyzedText:Ljava/lang/String;

    .line 88
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmTables:Ljava/util/Map;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsmToCharTables:Ljava/util/Map;

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmExtendedTables:Ljava/util/Map;

    sget-object v7, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsmExtendedToCharTables:Ljava/util/Map;

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->init(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 93
    .local v2, language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sExtendedDefaultAlphabets:[Lcom/android/internal/telephony/gsm/GsmAlphabet;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->getLanguageCode()I

    move-result v5

    new-instance v6, Lcom/android/internal/telephony/gsm/GsmAlphabet;

    sget-object v7, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-direct {v6, v7, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet;-><init>(Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;)V

    aput-object v6, v4, v5

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v2           #language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmTables:Ljava/util/Map;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #arr$:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    check-cast v0, Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsm7bitAlphabet:Landroid/util/SparseIntArray;

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->getNewCandidateAlphabets()Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastCandidateAlphabets:Ljava/util/List;

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;)V
    .locals 2
    .parameter "lockingshift"
    .parameter "singleshift"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmTables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmTable:Landroid/util/SparseIntArray;

    .line 121
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsmToCharTables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmToCharTable:Landroid/util/SparseIntArray;

    .line 122
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmExtendedTables:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmExtendedTable:Landroid/util/SparseIntArray;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsmExtendedToCharTables:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmExtendedToCharTable:Landroid/util/SparseIntArray;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmSpaceChar:I

    .line 125
    return-void
.end method

.method public static declared-synchronized getAlphabet(Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;)Lcom/android/internal/telephony/gsm/GsmAlphabet;
    .locals 5
    .parameter "alphabet"
    .parameter "extension"

    .prologue
    .line 135
    const-class v2, Lcom/android/internal/telephony/gsm/GsmAlphabet;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    if-ne p0, v3, :cond_0

    .line 137
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sExtendedDefaultAlphabets:[Lcom/android/internal/telephony/gsm/GsmAlphabet;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->getLanguageCode()I

    move-result v4

    aget-object v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local p0
    :goto_0
    monitor-exit v2

    return-object v3

    .line 140
    .restart local p0
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .local v0, languagePair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;>;"
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sAlphabetCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sAlphabetCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;

    move-object v3, p0

    goto :goto_0

    .line 146
    .restart local p0
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmAlphabet;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;-><init>(Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;)V

    .line 147
    .local v1, nationalAlphabet:Lcom/android/internal/telephony/gsm/GsmAlphabet;
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sAlphabetCache:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 148
    goto :goto_0

    .line 135
    .end local v0           #languagePair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;>;"
    .end local v1           #nationalAlphabet:Lcom/android/internal/telephony/gsm/GsmAlphabet;
    .end local p0
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static declared-synchronized getExtensionLanguage(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .locals 11
    .parameter "text"

    .prologue
    .line 161
    const-class v9, Lcom/android/internal/telephony/gsm/GsmAlphabet;

    monitor-enter v9

    const/4 v1, 0x0

    .line 162
    .local v1, candidateAlphabets:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;>;"
    move-object v6, p0

    .line 163
    .local v6, unanalyzedText:Ljava/lang/CharSequence;
    :try_start_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 165
    .local v7, unanalyzedTextLength:I
    sget-object v8, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastAnalyzedText:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 172
    sget-object v8, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastAnalyzedText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 173
    .local v5, lastTextLength:I
    if-le v7, v5, :cond_0

    const/4 v8, 0x0

    invoke-interface {p0, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v10, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastAnalyzedText:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 180
    invoke-interface {p0, v5, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 181
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 182
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastCandidateAlphabets:Ljava/util/List;

    .line 186
    .end local v5           #lastTextLength:I
    :cond_0
    if-nez v1, :cond_1

    .line 188
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->getNewCandidateAlphabets()Ljava/util/List;

    move-result-object v1

    .line 192
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 193
    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 194
    .local v0, c:I
    sget-object v8, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sGsm7bitAlphabet:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 197
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 198
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .line 200
    .local v4, language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    sget-object v8, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sCharToGsmExtendedTables:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_2

    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 161
    .end local v0           #c:I
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;>;"
    .end local v4           #language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .end local v7           #unanalyzedTextLength:I
    .end local p0
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 192
    .restart local v0       #c:I
    .restart local v2       #i:I
    .restart local v7       #unanalyzedTextLength:I
    .restart local p0
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0           #c:I
    :cond_4
    :try_start_1
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastCandidateAlphabets:Ljava/util/List;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/internal/telephony/gsm/GsmAlphabet;->sLastAnalyzedText:Ljava/lang/String;

    .line 212
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 214
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, p0

    .line 217
    :goto_2
    monitor-exit v9

    return-object v8

    .restart local p0
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static getNewCandidateAlphabets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 223
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 224
    .local v2, language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v2           #language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    :cond_0
    return-object v4
.end method

.method private packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 437
    div-int/lit8 v0, p2, 0x8

    .line 438
    .local v0, byteOffset:I
    rem-int/lit8 v1, p2, 0x8

    .line 440
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p1, v0

    shl-int v3, p3, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 442
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 443
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p3, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public charToGsm(C)I
    .locals 2
    .parameter "c"

    .prologue
    .line 237
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmSpaceChar:I

    goto :goto_0
.end method

.method public charToGsm(CZ)I
    .locals 3
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmTable:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 261
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmExtendedTable:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 264
    if-ne v0, v2, :cond_1

    .line 265
    if-eqz p2, :cond_0

    .line 266
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 268
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmSpaceChar:I

    .line 275
    :goto_0
    return v1

    .line 271
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 275
    goto :goto_0
.end method

.method public charToGsmExtended(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmExtendedTable:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 292
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 293
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmSpaceChar:I

    .line 296
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public countGsmSeptets(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 620
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 623
    :goto_0
    return v1

    .line 621
    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 623
    goto :goto_0
.end method

.method public countGsmSeptets(CZ)I
    .locals 3
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 647
    :goto_0
    return v0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mCharToGsmExtendedTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 640
    const/4 v0, 0x2

    goto :goto_0

    .line 643
    :cond_1
    if-eqz p2, :cond_2

    .line 644
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_2
    move v0, v2

    .line 647
    goto :goto_0
.end method

.method public countGsmSeptets(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 657
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 660
    goto :goto_0
.end method

.method public countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, charIndex:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 674
    .local v2, sz:I
    const/4 v1, 0x0

    .line 676
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 677
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_0
    return v1
.end method

.method public findGsmSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, accumulator:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 701
    .local v2, size:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 702
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->countGsmSeptets(C)I

    move-result v3

    add-int/2addr v0, v3

    .line 703
    if-le v0, p3, :cond_0

    move v3, v1

    .line 707
    :goto_1
    return v3

    .line 701
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 707
    goto :goto_1
.end method

.method public gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 11
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    const/4 v10, 0x1

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 481
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 483
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p3, :cond_3

    .line 484
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p4

    .line 486
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 487
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 490
    .local v7, shift:I
    add-int v8, p2, v1

    aget-byte v8, p1, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 493
    .local v3, gsmVal:I
    if-le v7, v10, :cond_0

    .line 495
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 497
    add-int v8, p2, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 500
    :cond_0
    if-eqz v5, :cond_1

    .line 501
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const/4 v5, 0x0

    .line 483
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    .line 504
    const/4 v5, 0x1

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 509
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 510
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    const/4 v8, 0x0

    .line 514
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x20

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 529
    .local v2, prevWasEscape:Z
    move v1, p2

    .local v1, i:I
    :goto_0
    add-int v4, p2, p3

    if-ge v1, v4, :cond_0

    .line 532
    aget-byte v4, p1, v1

    and-int/lit16 v0, v4, 0xff

    .line 534
    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1

    .line 556
    .end local v0           #c:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 536
    .restart local v0       #c:I
    :cond_1
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_3

    .line 537
    if-eqz v2, :cond_2

    .line 541
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    const/4 v2, 0x0

    .line 529
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 547
    :cond_3
    if-eqz v2, :cond_4

    .line 548
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmExtendedToCharTable:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 550
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmToCharTable:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public gsmExtendedToChar(I)C
    .locals 3
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmExtendedToCharTable:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 327
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->gsmToChar(I)C

    move-result v1

    .line 332
    :goto_0
    return v1

    :cond_0
    int-to-char v1, v0

    goto :goto_0
.end method

.method public gsmToChar(I)C
    .locals 2
    .parameter "gsmChar"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmAlphabet;->mGsmToCharTable:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public stringToGsm7BitPacked(Ljava/lang/String;IZ)[B
    .locals 11
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1b

    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 405
    .local v3, dataLen:I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v9

    add-int v6, v9, p2

    .line 406
    .local v6, septetCount:I
    const/16 v9, 0xff

    if-le v6, v9, :cond_0

    .line 407
    new-instance v9, Lcom/android/internal/telephony/EncodeException;

    const-string v10, "Payload cannot exceed 255 septets"

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 409
    :cond_0
    mul-int/lit8 v9, v6, 0x7

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v1, v9, 0x8

    .line 410
    .local v1, byteCount:I
    add-int/lit8 v9, v1, 0x1

    new-array v5, v9, [B

    .line 412
    .local v5, ret:[B
    const/4 v4, 0x0

    .local v4, i:I
    move v7, p2

    .local v7, septets:I
    mul-int/lit8 v0, p2, 0x7

    .line 413
    .local v0, bitOffset:I
    :goto_0
    if-ge v4, v3, :cond_2

    if-ge v7, v6, :cond_2

    .line 414
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 415
    .local v2, c:C
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->charToGsm(CZ)I

    move-result v8

    .line 416
    .local v8, v:I
    if-ne v8, v10, :cond_1

    .line 417
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->charToGsmExtended(C)I

    move-result v8

    .line 418
    invoke-direct {p0, v5, v0, v10}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->packSmsChar([BII)V

    .line 419
    add-int/lit8 v0, v0, 0x7

    .line 420
    add-int/lit8 v7, v7, 0x1

    .line 422
    :cond_1
    invoke-direct {p0, v5, v0, v8}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->packSmsChar([BII)V

    .line 423
    add-int/lit8 v7, v7, 0x1

    .line 413
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 425
    .end local v2           #c:C
    .end local v8           #v:I
    :cond_2
    const/4 v9, 0x0

    int-to-byte v10, v6

    aput-byte v10, v5, v9

    .line 427
    return-object v5
.end method

.method public stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 6
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 354
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 366
    :goto_0
    return-object v3

    .line 358
    :cond_1
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 359
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 361
    .local v1, headerSeptets:I
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v2

    .line 364
    .local v2, ret:[B
    array-length v3, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 365
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p2

    invoke-static {p2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 366
    goto :goto_0
.end method

.method public stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 567
    .local v1, septets:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;)I

    move-result v1

    .line 570
    new-array v0, v1, [B

    .line 572
    .local v0, ret:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 574
    return-object v0
.end method

.method public stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 8
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v7, 0x1b

    .line 586
    move v2, p3

    .line 589
    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_0
    if-ge v1, v4, :cond_0

    sub-int v6, v3, p3

    if-ge v6, p4, :cond_0

    .line 590
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 592
    .local v0, c:C
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->charToGsm(C)I

    move-result v5

    .line 594
    .local v5, v:I
    if-ne v5, v7, :cond_3

    .line 596
    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p3

    if-lt v6, p4, :cond_1

    .line 609
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_0
    :goto_1
    sub-int v6, v3, p3

    if-ge v6, p4, :cond_2

    .line 610
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p2, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .line 600
    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p2, v3

    .line 602
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmAlphabet;->charToGsmExtended(C)I

    move-result v5

    .line 605
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p2, v2

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_2
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_2
.end method
