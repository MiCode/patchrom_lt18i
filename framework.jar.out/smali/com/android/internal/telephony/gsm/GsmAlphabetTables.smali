.class public Lcom/android/internal/telephony/gsm/GsmAlphabetTables;
.super Ljava/lang/Object;
.source "GsmAlphabetTables.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 5
    .parameter "src"

    .prologue
    .line 1936
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1937
    .local v0, dest:Landroid/util/SparseIntArray;
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 1938
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1939
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1941
    :cond_0
    return-object v0
.end method

.method static init(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
            "Landroid/util/SparseIntArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, charToGsmTables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Landroid/util/SparseIntArray;>;"
    .local p1, gsmToCharTables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Landroid/util/SparseIntArray;>;"
    .local p2, charToGsmExtendedTables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Landroid/util/SparseIntArray;>;"
    .local p3, gsmExtendedToCharTables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;Landroid/util/SparseIntArray;>;"
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 45
    .local v3, table:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/16 v2, 0x40

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xa3

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x24

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xa5

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xe8

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xe9

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xf9

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xec

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xf2

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xc7

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xa

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xd8

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xf8

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xd

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xc5

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xe5

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x394

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x5f

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x3a6

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x393

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x39b

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x3a9

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x3a0

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x3a8

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x3a3

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x398

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x39e

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const v2, 0xffff

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xc6

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xe6

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xdf

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xc9

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x20

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x21

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x22

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x23

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xa4

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x25

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x26

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x27

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x28

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x29

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x2a

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x2b

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x2c

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x2d

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x2e

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x2f

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x30

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x31

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x32

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x33

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x34

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x35

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x36

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x37

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x38

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x39

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x3a

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x3b

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x3c

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x3d

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x3e

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x3f

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xa1

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x41

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x42

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x43

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x44

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x45

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x46

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x47

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x48

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x49

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x4a

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x4b

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x4c

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x4d

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x4e

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x4f

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x50

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x51

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x52

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x53

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x54

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x55

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x56

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x57

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x58

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x59

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x5a

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xc4

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xd6

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xd1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xdc

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xa7

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xbf

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x61

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x62

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x63

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x64

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x65

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x66

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x67

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x68

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x69

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x6a

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x6b

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x6c

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x6d

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x6e

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x6f

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x70

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x71

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x72

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x73

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x74

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x75

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x76

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x77

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x78

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0x79

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0x7a

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xe4

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xf6

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/16 v2, 0xf1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/16 v2, 0xfc

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    const/16 v0, 0xe0

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 186
    .end local v3           #table:Landroid/util/SparseIntArray;
    .local v0, table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TURKISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v1, 0x4

    const/16 v3, 0x20ac

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    const/4 v1, 0x7

    const/16 v3, 0x131

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    const/16 v1, 0xb

    const/16 v3, 0x11e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    const/16 v1, 0xc

    const/16 v3, 0x11f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    const/16 v1, 0x1c

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    const/16 v1, 0x1d

    const/16 v3, 0x15f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    const/16 v1, 0x40

    const/16 v3, 0x130

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    const/16 v1, 0x60

    const/16 v3, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 203
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->SPANISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 207
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PORTUGUESE:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v1, 0x4

    const/16 v3, 0xea

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    const/4 v1, 0x6

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    const/4 v1, 0x7

    const/16 v3, 0xed

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    const/16 v1, 0x8

    const/16 v3, 0xf3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    const/16 v1, 0x9

    const/16 v3, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    const/16 v1, 0xb

    const/16 v3, 0xd4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    const/16 v1, 0xc

    const/16 v3, 0xf4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    const/16 v1, 0xe

    const/16 v3, 0xc1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    const/16 v1, 0xf

    const/16 v3, 0xe1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    const/16 v1, 0x12

    const/16 v3, 0xaa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    const/16 v1, 0x13

    const/16 v3, 0xc7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    const/16 v1, 0x14

    const/16 v3, 0xc0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    const/16 v1, 0x15

    const/16 v3, 0x22e1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    const/16 v1, 0x16

    const/16 v3, 0x5e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    const/16 v1, 0x17

    const/16 v3, 0x5c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    const/16 v1, 0x18

    const/16 v3, 0x20ac

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    const/16 v1, 0x19

    const/16 v3, 0xd3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    const/16 v1, 0x1a

    const/16 v3, 0x7c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    const/16 v1, 0x1c

    const/16 v3, 0xc2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    const/16 v1, 0x1d

    const/16 v3, 0xe2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    const/16 v1, 0x1e

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    const/16 v1, 0x24

    const/16 v3, 0xb0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    const/16 v1, 0x40

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    const/16 v1, 0x5b

    const/16 v3, 0xc3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    const/16 v1, 0x5c

    const/16 v3, 0x5d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    const/16 v1, 0x5d

    const/16 v3, 0xda

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    const/16 v1, 0x60

    const/16 v3, 0x7e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    const/16 v1, 0x7b

    const/16 v3, 0xe3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    const/16 v1, 0x7c

    const/16 v3, 0xf5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    const/16 v1, 0x7d

    const/16 v3, 0x60

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 247
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->BENGALI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v1, 0x0

    const/16 v3, 0x981

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    const/4 v1, 0x1

    const/16 v3, 0x982

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    const/4 v1, 0x2

    const/16 v3, 0x983

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    const/4 v1, 0x3

    const/16 v3, 0x985

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    const/4 v1, 0x4

    const/16 v3, 0x986

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    const/4 v1, 0x5

    const/16 v3, 0x987

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    const/4 v1, 0x6

    const/16 v3, 0x988

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    const/4 v1, 0x7

    const/16 v3, 0x989

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    const/16 v1, 0x8

    const/16 v3, 0x98a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    const/16 v1, 0x9

    const/16 v3, 0x98b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    const/16 v1, 0xb

    const/16 v3, 0x98c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    const/16 v1, 0xf

    const/16 v3, 0x98f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    const/16 v1, 0x10

    const/16 v3, 0x990

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    const/16 v1, 0x13

    const/16 v3, 0x993

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    const/16 v1, 0x14

    const/16 v3, 0x994

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    const/16 v1, 0x15

    const/16 v3, 0x995

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    const/16 v1, 0x16

    const/16 v3, 0x996

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    const/16 v1, 0x17

    const/16 v3, 0x997

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    const/16 v1, 0x18

    const/16 v3, 0x998

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    const/16 v1, 0x19

    const/16 v3, 0x999

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    const/16 v1, 0x1a

    const/16 v3, 0x99a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 270
    const/16 v1, 0x1c

    const/16 v3, 0x99b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    const/16 v1, 0x1d

    const/16 v3, 0x99c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    const/16 v1, 0x1e

    const/16 v3, 0x99d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    const/16 v1, 0x1f

    const/16 v3, 0x99e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    const/16 v1, 0x22

    const/16 v3, 0x99f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    const/16 v1, 0x23

    const/16 v3, 0x9a0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    const/16 v1, 0x24

    const/16 v3, 0x9a1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    const/16 v1, 0x25

    const/16 v3, 0x9a2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    const/16 v1, 0x26

    const/16 v3, 0x9a3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    const/16 v1, 0x27

    const/16 v3, 0x9a4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    const/16 v1, 0x2a

    const/16 v3, 0x9a5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    const/16 v1, 0x2b

    const/16 v3, 0x9a6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    const/16 v1, 0x2d

    const/16 v3, 0x9a7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 284
    const/16 v1, 0x2f

    const/16 v3, 0x9a8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 286
    const/16 v1, 0x3d

    const/16 v3, 0x9aa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    const/16 v1, 0x3e

    const/16 v3, 0x9ab

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    const/16 v1, 0x40

    const/16 v3, 0x9ac

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 290
    const/16 v1, 0x41

    const/16 v3, 0x9ad

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    const/16 v1, 0x42

    const/16 v3, 0x9ae

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    const/16 v1, 0x43

    const/16 v3, 0x9af

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 293
    const/16 v1, 0x44

    const/16 v3, 0x9b0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    const/16 v1, 0x46

    const/16 v3, 0x9b2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 295
    const/16 v1, 0x4a

    const/16 v3, 0x9b6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 296
    const/16 v1, 0x4b

    const/16 v3, 0x9b7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    const/16 v1, 0x4c

    const/16 v3, 0x9b8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    const/16 v1, 0x4d

    const/16 v3, 0x9b9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 299
    const/16 v1, 0x4e

    const/16 v3, 0x9bc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 300
    const/16 v1, 0x4f

    const/16 v3, 0x9bd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    const/16 v1, 0x50

    const/16 v3, 0x9be

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    const/16 v1, 0x51

    const/16 v3, 0x9bf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 304
    const/16 v1, 0x52

    const/16 v3, 0x9c0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 305
    const/16 v1, 0x53

    const/16 v3, 0x9c1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    const/16 v1, 0x54

    const/16 v3, 0x9c2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    const/16 v1, 0x55

    const/16 v3, 0x9c3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 308
    const/16 v1, 0x56

    const/16 v3, 0x9c4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    const/16 v1, 0x59

    const/16 v3, 0x9c7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    const/16 v1, 0x5a

    const/16 v3, 0x9c8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 311
    const/16 v1, 0x5d

    const/16 v3, 0x9cb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    const/16 v1, 0x5e

    const/16 v3, 0x9cc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    const/16 v1, 0x5f

    const/16 v3, 0x9cd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    const/16 v1, 0x60

    const/16 v3, 0x9ce

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    const/16 v1, 0x7b

    const/16 v3, 0x9d7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    const/16 v1, 0x7c

    const/16 v3, 0x9dc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    const/16 v1, 0x7d

    const/16 v3, 0x9dd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    const/16 v1, 0x7e

    const/16 v3, 0x9f0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    const/16 v1, 0x7f

    const/16 v3, 0x9f1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 325
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->GUJARATI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/4 v1, 0x0

    const/16 v3, 0xa81

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    const/4 v1, 0x1

    const/16 v3, 0xa82

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    const/4 v1, 0x2

    const/16 v3, 0xa83

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    const/4 v1, 0x3

    const/16 v3, 0xa85

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    const/4 v1, 0x4

    const/16 v3, 0xa86

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    const/4 v1, 0x5

    const/16 v3, 0xa87

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    const/4 v1, 0x6

    const/16 v3, 0xa88

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    const/4 v1, 0x7

    const/16 v3, 0xa89

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    const/16 v1, 0x8

    const/16 v3, 0xa8a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    const/16 v1, 0x9

    const/16 v3, 0xa8b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    const/16 v1, 0xb

    const/16 v3, 0xa8c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    const/16 v1, 0xc

    const/16 v3, 0xa8d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    const/16 v1, 0xf

    const/16 v3, 0xa8f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    const/16 v1, 0x10

    const/16 v3, 0xa90

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    const/16 v1, 0x11

    const/16 v3, 0xa91

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 342
    const/16 v1, 0x13

    const/16 v3, 0xa93

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    const/16 v1, 0x14

    const/16 v3, 0xa94

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    const/16 v1, 0x15

    const/16 v3, 0xa95

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    const/16 v1, 0x16

    const/16 v3, 0xa96

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 346
    const/16 v1, 0x17

    const/16 v3, 0xa97

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    const/16 v1, 0x18

    const/16 v3, 0xa98

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    const/16 v1, 0x19

    const/16 v3, 0xa99

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    const/16 v1, 0x1a

    const/16 v3, 0xa9a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    const/16 v1, 0x1c

    const/16 v3, 0xa9b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    const/16 v1, 0x1d

    const/16 v3, 0xa9c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    const/16 v1, 0x1e

    const/16 v3, 0xa9d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    const/16 v1, 0x1f

    const/16 v3, 0xa9e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    const/16 v1, 0x22

    const/16 v3, 0xa9f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    const/16 v1, 0x23

    const/16 v3, 0xaa0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    const/16 v1, 0x24

    const/16 v3, 0xaa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 358
    const/16 v1, 0x25

    const/16 v3, 0xaa2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 359
    const/16 v1, 0x26

    const/16 v3, 0xaa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    const/16 v1, 0x27

    const/16 v3, 0xaa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    const/16 v1, 0x2a

    const/16 v3, 0xaa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 362
    const/16 v1, 0x2b

    const/16 v3, 0xaa6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    const/16 v1, 0x2d

    const/16 v3, 0xaa7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    const/16 v1, 0x2f

    const/16 v3, 0xaa8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    const/16 v1, 0x3d

    const/16 v3, 0xaaa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 367
    const/16 v1, 0x3e

    const/16 v3, 0xaab

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 369
    const/16 v1, 0x40

    const/16 v3, 0xaac

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 370
    const/16 v1, 0x41

    const/16 v3, 0xaad

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 371
    const/16 v1, 0x42

    const/16 v3, 0xaae

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 372
    const/16 v1, 0x43

    const/16 v3, 0xaaf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    const/16 v1, 0x44

    const/16 v3, 0xab0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 374
    const/16 v1, 0x46

    const/16 v3, 0xab2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    const/16 v1, 0x47

    const/16 v3, 0xab3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 376
    const/16 v1, 0x49

    const/16 v3, 0xab5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    const/16 v1, 0x4a

    const/16 v3, 0xab6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 378
    const/16 v1, 0x4b

    const/16 v3, 0xab7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 379
    const/16 v1, 0x4c

    const/16 v3, 0xab8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 380
    const/16 v1, 0x4d

    const/16 v3, 0xab9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 381
    const/16 v1, 0x4e

    const/16 v3, 0xabc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 382
    const/16 v1, 0x4f

    const/16 v3, 0xabd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 384
    const/16 v1, 0x50

    const/16 v3, 0xabe

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 385
    const/16 v1, 0x51

    const/16 v3, 0xabf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    const/16 v1, 0x52

    const/16 v3, 0xac0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 387
    const/16 v1, 0x53

    const/16 v3, 0xac1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    const/16 v1, 0x54

    const/16 v3, 0xac2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    const/16 v1, 0x55

    const/16 v3, 0xac3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    const/16 v1, 0x56

    const/16 v3, 0xac4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 391
    const/16 v1, 0x57

    const/16 v3, 0xac5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 392
    const/16 v1, 0x59

    const/16 v3, 0xac7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 393
    const/16 v1, 0x5a

    const/16 v3, 0xac8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 394
    const/16 v1, 0x5b

    const/16 v3, 0xac9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    const/16 v1, 0x5d

    const/16 v3, 0xacb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 396
    const/16 v1, 0x5e

    const/16 v3, 0xacc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 397
    const/16 v1, 0x5f

    const/16 v3, 0xacd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    const/16 v1, 0x60

    const/16 v3, 0xad0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 401
    const/16 v1, 0x7b

    const/16 v3, 0xae0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 402
    const/16 v1, 0x7c

    const/16 v3, 0xae1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    const/16 v1, 0x7d

    const/16 v3, 0xae2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 404
    const/16 v1, 0x7e

    const/16 v3, 0xae3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 405
    const/16 v1, 0x7f

    const/16 v3, 0xaf1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 408
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 409
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->HINDI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const/4 v1, 0x0

    const/16 v3, 0x901

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 411
    const/4 v1, 0x1

    const/16 v3, 0x902

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 412
    const/4 v1, 0x2

    const/16 v3, 0x903

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 413
    const/4 v1, 0x3

    const/16 v3, 0x905

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    const/4 v1, 0x4

    const/16 v3, 0x906

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 415
    const/4 v1, 0x5

    const/16 v3, 0x907

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 416
    const/4 v1, 0x6

    const/16 v3, 0x908

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    const/4 v1, 0x7

    const/16 v3, 0x909

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 418
    const/16 v1, 0x8

    const/16 v3, 0x90a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 419
    const/16 v1, 0x9

    const/16 v3, 0x90b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 420
    const/16 v1, 0xb

    const/16 v3, 0x90c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    const/16 v1, 0xc

    const/16 v3, 0x90c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 422
    const/16 v1, 0xe

    const/16 v3, 0x90e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 423
    const/16 v1, 0xf

    const/16 v3, 0x90f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 425
    const/16 v1, 0x10

    const/16 v3, 0x910

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 426
    const/16 v1, 0x11

    const/16 v3, 0x911

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 427
    const/16 v1, 0x12

    const/16 v3, 0x912

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 428
    const/16 v1, 0x13

    const/16 v3, 0x913

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 429
    const/16 v1, 0x14

    const/16 v3, 0x914

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 430
    const/16 v1, 0x15

    const/16 v3, 0x915

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 431
    const/16 v1, 0x16

    const/16 v3, 0x916

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 432
    const/16 v1, 0x17

    const/16 v3, 0x917

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 433
    const/16 v1, 0x18

    const/16 v3, 0x918

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 434
    const/16 v1, 0x19

    const/16 v3, 0x919

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 435
    const/16 v1, 0x1a

    const/16 v3, 0x91a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    const/16 v1, 0x1c

    const/16 v3, 0x91b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    const/16 v1, 0x1d

    const/16 v3, 0x91c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 438
    const/16 v1, 0x1e

    const/16 v3, 0x91d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    const/16 v1, 0x1f

    const/16 v3, 0x91e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 441
    const/16 v1, 0x22

    const/16 v3, 0x91f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    const/16 v1, 0x23

    const/16 v3, 0x920

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    const/16 v1, 0x24

    const/16 v3, 0x921

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    const/16 v1, 0x25

    const/16 v3, 0x922

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    const/16 v1, 0x26

    const/16 v3, 0x923

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 446
    const/16 v1, 0x27

    const/16 v3, 0x924

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    const/16 v1, 0x2a

    const/16 v3, 0x925

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    const/16 v1, 0x2b

    const/16 v3, 0x926

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    const/16 v1, 0x2d

    const/16 v3, 0x927

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    const/16 v1, 0x2f

    const/16 v3, 0x928

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    const/16 v1, 0x3c

    const/16 v3, 0x929

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    const/16 v1, 0x3d

    const/16 v3, 0x92a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    const/16 v1, 0x3e

    const/16 v3, 0x92b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 456
    const/16 v1, 0x40

    const/16 v3, 0x92c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    const/16 v1, 0x41

    const/16 v3, 0x92d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    const/16 v1, 0x42

    const/16 v3, 0x92e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    const/16 v1, 0x43

    const/16 v3, 0x92f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    const/16 v1, 0x44

    const/16 v3, 0x930

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    const/16 v1, 0x45

    const/16 v3, 0x931

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    const/16 v1, 0x46

    const/16 v3, 0x932

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    const/16 v1, 0x47

    const/16 v3, 0x933

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    const/16 v1, 0x48

    const/16 v3, 0x934

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    const/16 v1, 0x49

    const/16 v3, 0x935

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 466
    const/16 v1, 0x4a

    const/16 v3, 0x936

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    const/16 v1, 0x4c

    const/16 v3, 0x937

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    const/16 v1, 0x4d

    const/16 v3, 0x938

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    const/16 v1, 0x4e

    const/16 v3, 0x939

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    const/16 v1, 0x4f

    const/16 v3, 0x93c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    const/16 v1, 0x4f

    const/16 v3, 0x93d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    const/16 v1, 0x50

    const/16 v3, 0x93e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 474
    const/16 v1, 0x51

    const/16 v3, 0x93f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 475
    const/16 v1, 0x52

    const/16 v3, 0x940

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 476
    const/16 v1, 0x53

    const/16 v3, 0x941

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    const/16 v1, 0x54

    const/16 v3, 0x942

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    const/16 v1, 0x55

    const/16 v3, 0x943

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 479
    const/16 v1, 0x56

    const/16 v3, 0x944

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    const/16 v1, 0x57

    const/16 v3, 0x945

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 481
    const/16 v1, 0x58

    const/16 v3, 0x946

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 482
    const/16 v1, 0x59

    const/16 v3, 0x947

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 483
    const/16 v1, 0x5a

    const/16 v3, 0x948

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 484
    const/16 v1, 0x5c

    const/16 v3, 0x949

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    const/16 v1, 0x5d

    const/16 v3, 0x94a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 486
    const/16 v1, 0x5e

    const/16 v3, 0x94b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 487
    const/16 v1, 0x5f

    const/16 v3, 0x94c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 488
    const/16 v1, 0x5f

    const/16 v3, 0x94d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 490
    const/16 v1, 0x60

    const/16 v3, 0x950

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 492
    const/16 v1, 0x7b

    const/16 v3, 0x972

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    const/16 v1, 0x7c

    const/16 v3, 0x97b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 494
    const/16 v1, 0x7d

    const/16 v3, 0x97c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    const/16 v1, 0x7e

    const/16 v3, 0x97e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 496
    const/16 v1, 0x7f

    const/16 v3, 0x97f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 499
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 500
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->KANNADA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/4 v1, 0x1

    const/16 v3, 0xc82

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 502
    const/4 v1, 0x2

    const/16 v3, 0xc83

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 503
    const/4 v1, 0x3

    const/16 v3, 0xc85

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    const/4 v1, 0x4

    const/16 v3, 0xc86

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    const/4 v1, 0x5

    const/16 v3, 0xc87

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 506
    const/4 v1, 0x6

    const/16 v3, 0xc88

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 507
    const/4 v1, 0x7

    const/16 v3, 0xc89

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 508
    const/16 v1, 0x8

    const/16 v3, 0xc8a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 509
    const/16 v1, 0x9

    const/16 v3, 0xc8b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 510
    const/16 v1, 0xb

    const/16 v3, 0xc8c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 511
    const/16 v1, 0xe

    const/16 v3, 0xc8e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 512
    const/16 v1, 0xf

    const/16 v3, 0xc8f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    const/16 v1, 0x10

    const/16 v3, 0xc90

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 515
    const/16 v1, 0x12

    const/16 v3, 0xc92

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 516
    const/16 v1, 0x13

    const/16 v3, 0xc93

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    const/16 v1, 0x14

    const/16 v3, 0xc94

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 518
    const/16 v1, 0x15

    const/16 v3, 0xc95

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 519
    const/16 v1, 0x16

    const/16 v3, 0xc96

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 520
    const/16 v1, 0x17

    const/16 v3, 0xc97

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 521
    const/16 v1, 0x18

    const/16 v3, 0xc98

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 522
    const/16 v1, 0x19

    const/16 v3, 0xc99

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 523
    const/16 v1, 0x1a

    const/16 v3, 0xc9a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 524
    const/16 v1, 0x1c

    const/16 v3, 0xc9b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 525
    const/16 v1, 0x1d

    const/16 v3, 0xc9c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 526
    const/16 v1, 0x1e

    const/16 v3, 0xc9d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 527
    const/16 v1, 0x1f

    const/16 v3, 0xc9e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 529
    const/16 v1, 0x22

    const/16 v3, 0xc9f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 530
    const/16 v1, 0x23

    const/16 v3, 0xca0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 531
    const/16 v1, 0x24

    const/16 v3, 0xcaa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 532
    const/16 v1, 0x25

    const/16 v3, 0xca2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    const/16 v1, 0x26

    const/16 v3, 0xca3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 534
    const/16 v1, 0x27

    const/16 v3, 0xca4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 535
    const/16 v1, 0x2a

    const/16 v3, 0xca5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 536
    const/16 v1, 0x2b

    const/16 v3, 0xca6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 537
    const/16 v1, 0x2d

    const/16 v3, 0xca7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    const/16 v1, 0x2f

    const/16 v3, 0xca8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    const/16 v1, 0x3d

    const/16 v3, 0xcaa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    const/16 v1, 0x3e

    const/16 v3, 0xcab

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    const/16 v1, 0x40

    const/16 v3, 0xcac

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 544
    const/16 v1, 0x41

    const/16 v3, 0xcad

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 545
    const/16 v1, 0x42

    const/16 v3, 0xcae

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    const/16 v1, 0x43

    const/16 v3, 0xcaf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    const/16 v1, 0x44

    const/16 v3, 0xcb0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 548
    const/16 v1, 0x45

    const/16 v3, 0xcb1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    const/16 v1, 0x46

    const/16 v3, 0xcb2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    const/16 v1, 0x47

    const/16 v3, 0xcb3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 551
    const/16 v1, 0x49

    const/16 v3, 0xcb5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 552
    const/16 v1, 0x4a

    const/16 v3, 0xcb6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 553
    const/16 v1, 0x4b

    const/16 v3, 0xcb7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 554
    const/16 v1, 0x4c

    const/16 v3, 0xcb8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 555
    const/16 v1, 0x4d

    const/16 v3, 0xcb9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 556
    const/16 v1, 0x4e

    const/16 v3, 0xcbc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 557
    const/16 v1, 0x4f

    const/16 v3, 0xcbd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 559
    const/16 v1, 0x50

    const/16 v3, 0xcbe

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 560
    const/16 v1, 0x51

    const/16 v3, 0xcbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 561
    const/16 v1, 0x52

    const/16 v3, 0xcc0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 562
    const/16 v1, 0x53

    const/16 v3, 0xcc1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 563
    const/16 v1, 0x54

    const/16 v3, 0xcc2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    const/16 v1, 0x55

    const/16 v3, 0xcc3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 565
    const/16 v1, 0x56

    const/16 v3, 0xcc4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    const/16 v1, 0x58

    const/16 v3, 0xcc6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    const/16 v1, 0x59

    const/16 v3, 0xcc7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 568
    const/16 v1, 0x5a

    const/16 v3, 0xcc8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 569
    const/16 v1, 0x5c

    const/16 v3, 0xcca

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 570
    const/16 v1, 0x5d

    const/16 v3, 0xccb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 571
    const/16 v1, 0x5e

    const/16 v3, 0xccc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 572
    const/16 v1, 0x5f

    const/16 v3, 0xccd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 574
    const/16 v1, 0x7b

    const/16 v3, 0xcd6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 575
    const/16 v1, 0x7c

    const/16 v3, 0xce0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 576
    const/16 v1, 0x7d

    const/16 v3, 0xce1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 577
    const/16 v1, 0x7e

    const/16 v3, 0xce2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    const/16 v1, 0x7f

    const/16 v3, 0xce3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 582
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->MALAYALAM:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/4 v1, 0x1

    const/16 v3, 0xd02

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    const/4 v1, 0x2

    const/16 v3, 0xd03

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    const/4 v1, 0x3

    const/16 v3, 0xd05

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    const/4 v1, 0x4

    const/16 v3, 0xd06

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    const/4 v1, 0x5

    const/16 v3, 0xd07

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    const/4 v1, 0x6

    const/16 v3, 0xd08

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 589
    const/4 v1, 0x7

    const/16 v3, 0xd09

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    const/16 v1, 0x8

    const/16 v3, 0xd0a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    const/16 v1, 0x9

    const/16 v3, 0xd0b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    const/16 v1, 0xb

    const/16 v3, 0xd0c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    const/16 v1, 0xe

    const/16 v3, 0xd0e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 594
    const/16 v1, 0xf

    const/16 v3, 0xc0f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    const/16 v1, 0x10

    const/16 v3, 0xd10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    const/16 v1, 0x12

    const/16 v3, 0xd12

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    const/16 v1, 0x13

    const/16 v3, 0xd13

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    const/16 v1, 0x14

    const/16 v3, 0xd14

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    const/16 v1, 0x15

    const/16 v3, 0xd15

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    const/16 v1, 0x16

    const/16 v3, 0xd16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    const/16 v1, 0x17

    const/16 v3, 0xd17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 603
    const/16 v1, 0x18

    const/16 v3, 0xd18

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    const/16 v1, 0x19

    const/16 v3, 0xd19

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    const/16 v1, 0x1a

    const/16 v3, 0xd1a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    const/16 v1, 0x1c

    const/16 v3, 0xd1b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    const/16 v1, 0x1d

    const/16 v3, 0xd1c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    const/16 v1, 0x1e

    const/16 v3, 0xd1d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    const/16 v1, 0x1f

    const/16 v3, 0xd1e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 611
    const/16 v1, 0x22

    const/16 v3, 0xd1f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 612
    const/16 v1, 0x23

    const/16 v3, 0xd20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    const/16 v1, 0x24

    const/16 v3, 0xd21

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    const/16 v1, 0x25

    const/16 v3, 0xd22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    const/16 v1, 0x26

    const/16 v3, 0xd23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 616
    const/16 v1, 0x27

    const/16 v3, 0xd24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    const/16 v1, 0x2a

    const/16 v3, 0xd25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    const/16 v1, 0x2b

    const/16 v3, 0xd26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    const/16 v1, 0x2d

    const/16 v3, 0xd27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    const/16 v1, 0x2f

    const/16 v3, 0xd28

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    const/16 v1, 0x3d

    const/16 v3, 0xd2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    const/16 v1, 0x3e

    const/16 v3, 0xd2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    const/16 v1, 0x40

    const/16 v3, 0xd2c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    const/16 v1, 0x41

    const/16 v3, 0xd2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    const/16 v1, 0x42

    const/16 v3, 0xd2e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    const/16 v1, 0x43

    const/16 v3, 0xd2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    const/16 v1, 0x44

    const/16 v3, 0xd30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    const/16 v1, 0x45

    const/16 v3, 0xd31

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    const/16 v1, 0x46

    const/16 v3, 0xd32

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    const/16 v1, 0x47

    const/16 v3, 0xd33

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    const/16 v1, 0x48

    const/16 v3, 0xd34

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    const/16 v1, 0x49

    const/16 v3, 0xd35

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    const/16 v1, 0x4a

    const/16 v3, 0xd36

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    const/16 v1, 0x4b

    const/16 v3, 0xd37

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    const/16 v1, 0x4c

    const/16 v3, 0xd38

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    const/16 v1, 0x4d

    const/16 v3, 0xd39

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    const/16 v1, 0x4f

    const/16 v3, 0xd3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    const/16 v1, 0x50

    const/16 v3, 0xd3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    const/16 v1, 0x51

    const/16 v3, 0xd3f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    const/16 v1, 0x52

    const/16 v3, 0xd40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    const/16 v1, 0x53

    const/16 v3, 0xd41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    const/16 v1, 0x54

    const/16 v3, 0xd42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    const/16 v1, 0x55

    const/16 v3, 0xd43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    const/16 v1, 0x56

    const/16 v3, 0xd44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 648
    const/16 v1, 0x58

    const/16 v3, 0xd46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    const/16 v1, 0x59

    const/16 v3, 0xd47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    const/16 v1, 0x5a

    const/16 v3, 0xd48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    const/16 v1, 0x5c

    const/16 v3, 0xd4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    const/16 v1, 0x5d

    const/16 v3, 0xd4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    const/16 v1, 0x5e

    const/16 v3, 0xd4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    const/16 v1, 0x5f

    const/16 v3, 0xd4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    const/16 v1, 0x60

    const/16 v3, 0xd57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    const/16 v1, 0x7b

    const/16 v3, 0xd60

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    const/16 v1, 0x7c

    const/16 v3, 0xd61

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    const/16 v1, 0x7d

    const/16 v3, 0xd62

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    const/16 v1, 0x7e

    const/16 v3, 0xd63

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    const/16 v1, 0x7f

    const/16 v3, 0xd79

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 666
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->ORIYA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const/4 v1, 0x0

    const/16 v3, 0xb01

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    const/4 v1, 0x1

    const/16 v3, 0xb02

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    const/4 v1, 0x2

    const/16 v3, 0xb03

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    const/4 v1, 0x3

    const/16 v3, 0xb05

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 671
    const/4 v1, 0x4

    const/16 v3, 0xb06

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 672
    const/4 v1, 0x5

    const/16 v3, 0xb07

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 673
    const/4 v1, 0x6

    const/16 v3, 0xb08

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 674
    const/4 v1, 0x7

    const/16 v3, 0xb09

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    const/16 v1, 0x8

    const/16 v3, 0xb0a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 676
    const/16 v1, 0x9

    const/16 v3, 0xb0b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 677
    const/16 v1, 0xb

    const/16 v3, 0xb0c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    const/16 v1, 0xf

    const/16 v3, 0xb0f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 680
    const/4 v1, 0x0

    const/16 v3, 0xb10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 681
    const/16 v1, 0x13

    const/16 v3, 0xb13

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    const/16 v1, 0x14

    const/16 v3, 0xb14

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    const/16 v1, 0x15

    const/16 v3, 0xb15

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    const/16 v1, 0x16

    const/16 v3, 0xb16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    const/16 v1, 0x17

    const/16 v3, 0xb17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    const/16 v1, 0x18

    const/16 v3, 0xb18

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    const/16 v1, 0x19

    const/16 v3, 0xb19

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    const/16 v1, 0x1a

    const/16 v3, 0xb1a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    const/16 v1, 0x1c

    const/16 v3, 0xb1b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    const/16 v1, 0x1d

    const/16 v3, 0xb1c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    const/16 v1, 0x1e

    const/16 v3, 0xb1d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    const/16 v1, 0x1f

    const/16 v3, 0xb1e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    const/16 v1, 0x22

    const/16 v3, 0xb1f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    const/16 v1, 0x23

    const/16 v3, 0xb20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    const/16 v1, 0x24

    const/16 v3, 0xb21

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    const/16 v1, 0x25

    const/16 v3, 0xb22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    const/16 v1, 0x26

    const/16 v3, 0xb23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    const/16 v1, 0x27

    const/16 v3, 0xb24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    const/16 v1, 0x2a

    const/16 v3, 0xb25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    const/16 v1, 0x2b

    const/16 v3, 0xb26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 702
    const/16 v1, 0x2d

    const/16 v3, 0xb27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 703
    const/16 v1, 0x2f

    const/16 v3, 0xb28

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    const/16 v1, 0x3d

    const/16 v3, 0xb2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 706
    const/16 v1, 0x3e

    const/16 v3, 0xb2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 708
    const/16 v1, 0x40

    const/16 v3, 0xb2c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 709
    const/16 v1, 0x41

    const/16 v3, 0xb2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    const/16 v1, 0x42

    const/16 v3, 0xb2e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    const/16 v1, 0x43

    const/16 v3, 0xb2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 712
    const/16 v1, 0x44

    const/16 v3, 0xb30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    const/16 v1, 0x46

    const/16 v3, 0xb32

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    const/16 v1, 0x47

    const/16 v3, 0xb33

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 715
    const/16 v1, 0x49

    const/16 v3, 0xb35

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    const/16 v1, 0x4a

    const/16 v3, 0xb36

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    const/16 v1, 0x4b

    const/16 v3, 0xb37

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    const/16 v1, 0x4c

    const/16 v3, 0xb38

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    const/16 v1, 0x4d

    const/16 v3, 0xb39

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    const/16 v1, 0x4f

    const/16 v3, 0xb3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    const/16 v1, 0x50

    const/16 v3, 0xb3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 723
    const/16 v1, 0x51

    const/16 v3, 0xb3f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    const/16 v1, 0x52

    const/16 v3, 0xb40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    const/16 v1, 0x53

    const/16 v3, 0xb41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    const/16 v1, 0x54

    const/16 v3, 0xb42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 727
    const/16 v1, 0x55

    const/16 v3, 0xb43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    const/16 v1, 0x56

    const/16 v3, 0xb44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    const/16 v1, 0x59

    const/16 v3, 0xb47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    const/16 v1, 0x5a

    const/16 v3, 0xb48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 731
    const/16 v1, 0x5d

    const/16 v3, 0xb4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    const/16 v1, 0x5e

    const/16 v3, 0xb4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 733
    const/16 v1, 0x5f

    const/16 v3, 0xb4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 735
    const/16 v1, 0x60

    const/16 v3, 0xb56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 737
    const/16 v1, 0x7b

    const/16 v3, 0xb57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 738
    const/16 v1, 0x7c

    const/16 v3, 0xb60

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 739
    const/16 v1, 0x7d

    const/16 v3, 0xb61

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    const/16 v1, 0x7e

    const/16 v3, 0xb62

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 741
    const/16 v1, 0x7f

    const/16 v3, 0xb63

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 744
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 745
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PUNJABI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const/4 v1, 0x0

    const/16 v3, 0xa01

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 747
    const/4 v1, 0x1

    const/16 v3, 0xa02

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    const/4 v1, 0x2

    const/16 v3, 0xa03

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 749
    const/4 v1, 0x3

    const/16 v3, 0xa05

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 750
    const/4 v1, 0x4

    const/16 v3, 0xa06

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    const/4 v1, 0x5

    const/16 v3, 0xa07

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 752
    const/4 v1, 0x6

    const/16 v3, 0xa08

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    const/4 v1, 0x7

    const/16 v3, 0xa09

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    const/16 v1, 0x8

    const/16 v3, 0xa0a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    const/16 v1, 0xf

    const/16 v3, 0xa0f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 757
    const/16 v1, 0x10

    const/16 v3, 0xa10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 758
    const/16 v1, 0x13

    const/16 v3, 0xa13

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    const/16 v1, 0x14

    const/16 v3, 0xa14

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    const/16 v1, 0x15

    const/16 v3, 0xa15

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 761
    const/16 v1, 0x16

    const/16 v3, 0xa16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 762
    const/16 v1, 0x17

    const/16 v3, 0xa17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 763
    const/16 v1, 0x18

    const/16 v3, 0xa18

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 764
    const/16 v1, 0x19

    const/16 v3, 0xa19

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    const/16 v1, 0x1a

    const/16 v3, 0xa1a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    const/16 v1, 0x1c

    const/16 v3, 0xa1b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    const/16 v1, 0x1d

    const/16 v3, 0xa1c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 768
    const/16 v1, 0x1e

    const/16 v3, 0xa1d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 769
    const/16 v1, 0x1f

    const/16 v3, 0xa1e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 771
    const/16 v1, 0x22

    const/16 v3, 0xa1f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    const/16 v1, 0x23

    const/16 v3, 0xa20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    const/16 v1, 0x24

    const/16 v3, 0xa21

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    const/16 v1, 0x25

    const/16 v3, 0xa22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    const/16 v1, 0x26

    const/16 v3, 0xa23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    const/16 v1, 0x27

    const/16 v3, 0xa24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    const/16 v1, 0x2a

    const/16 v3, 0xa25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 778
    const/16 v1, 0x2b

    const/16 v3, 0xa26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    const/16 v1, 0x2d

    const/16 v3, 0xa27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    const/16 v1, 0x2f

    const/16 v3, 0xa28

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    const/16 v1, 0x3d

    const/16 v3, 0xa2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    const/16 v1, 0x3e

    const/16 v3, 0xa2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    const/16 v1, 0x40

    const/16 v3, 0xa2c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    const/16 v1, 0x41

    const/16 v3, 0xa2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    const/16 v1, 0x42

    const/16 v3, 0xa2e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 788
    const/16 v1, 0x43

    const/16 v3, 0xa2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    const/16 v1, 0x44

    const/16 v3, 0xa30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    const/16 v1, 0x46

    const/16 v3, 0xa32

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    const/16 v1, 0x47

    const/16 v3, 0xa33

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    const/16 v1, 0x49

    const/16 v3, 0xa35

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 793
    const/16 v1, 0x4a

    const/16 v3, 0xa36

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    const/16 v1, 0x4c

    const/16 v3, 0xa38

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 795
    const/16 v1, 0x4d

    const/16 v3, 0xa39

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 796
    const/16 v1, 0x4e

    const/16 v3, 0xa3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 798
    const/16 v1, 0x50

    const/16 v3, 0xa3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 799
    const/16 v1, 0x51

    const/16 v3, 0xa3f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    const/16 v1, 0x52

    const/16 v3, 0xa40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    const/16 v1, 0x53

    const/16 v3, 0xa41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    const/16 v1, 0x54

    const/16 v3, 0xa42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    const/16 v1, 0x59

    const/16 v3, 0xa47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 804
    const/16 v1, 0x5a

    const/16 v3, 0xa48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    const/16 v1, 0x5d

    const/16 v3, 0xa4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    const/16 v1, 0x5e

    const/16 v3, 0xa4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    const/16 v1, 0x5f

    const/16 v3, 0xa4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    const/16 v1, 0x60

    const/16 v3, 0xa51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 811
    const/16 v1, 0x7b

    const/16 v3, 0xa70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 812
    const/16 v1, 0x7c

    const/16 v3, 0xa71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 813
    const/16 v1, 0x7d

    const/16 v3, 0xa72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    const/16 v1, 0x7e

    const/16 v3, 0xa73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 815
    const/16 v1, 0x7f

    const/16 v3, 0xa74

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 819
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TAMIL:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const/4 v1, 0x1

    const/16 v3, 0xb82

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    const/4 v1, 0x2

    const/16 v3, 0xb83

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    const/4 v1, 0x3

    const/16 v3, 0xb85

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    const/4 v1, 0x4

    const/16 v3, 0xb86

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    const/4 v1, 0x5

    const/16 v3, 0xb87

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 825
    const/4 v1, 0x6

    const/16 v3, 0xb88

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 826
    const/4 v1, 0x7

    const/16 v3, 0xb89

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    const/16 v1, 0x8

    const/16 v3, 0xb8a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 828
    const/16 v1, 0xe

    const/16 v3, 0xb8e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 829
    const/16 v1, 0xf

    const/16 v3, 0xb8f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 831
    const/16 v1, 0x10

    const/16 v3, 0xb90

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 832
    const/16 v1, 0x12

    const/16 v3, 0xb92

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 833
    const/16 v1, 0x13

    const/16 v3, 0xb93

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 834
    const/16 v1, 0x14

    const/16 v3, 0xb94

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 835
    const/16 v1, 0x15

    const/16 v3, 0xb95

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 836
    const/16 v1, 0x19

    const/16 v3, 0xb99

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 837
    const/16 v1, 0x1a

    const/16 v3, 0xb9a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 838
    const/16 v1, 0x1d

    const/16 v3, 0xb9c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 839
    const/16 v1, 0x1f

    const/16 v3, 0xb9e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 841
    const/16 v1, 0x22

    const/16 v3, 0xb9f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 842
    const/16 v1, 0x26

    const/16 v3, 0xba3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 843
    const/16 v1, 0x27

    const/16 v3, 0xba4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 844
    const/16 v1, 0x2f

    const/16 v3, 0xba8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 846
    const/16 v1, 0x3c

    const/16 v3, 0xba9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 847
    const/16 v1, 0x3d

    const/16 v3, 0xbaa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 849
    const/16 v1, 0x42

    const/16 v3, 0xbae

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 850
    const/16 v1, 0x43

    const/16 v3, 0xbaf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 851
    const/16 v1, 0x44

    const/16 v3, 0xbb0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 852
    const/16 v1, 0x45

    const/16 v3, 0xbb1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 853
    const/16 v1, 0x46

    const/16 v3, 0xbb2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    const/16 v1, 0x47

    const/16 v3, 0xbb3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 855
    const/16 v1, 0x48

    const/16 v3, 0xbb4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 856
    const/16 v1, 0x49

    const/16 v3, 0xbb5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 857
    const/16 v1, 0x4a

    const/16 v3, 0xbb6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 858
    const/16 v1, 0x4b

    const/16 v3, 0xbb7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 859
    const/16 v1, 0x4c

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 860
    const/16 v1, 0x4d

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 862
    const/16 v1, 0x50

    const/16 v3, 0xbbe

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 863
    const/16 v1, 0x51

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 864
    const/16 v1, 0x52

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 865
    const/16 v1, 0x53

    const/16 v3, 0xbc1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 866
    const/16 v1, 0x54

    const/16 v3, 0xbc2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 867
    const/16 v1, 0x58

    const/16 v3, 0xbc6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 868
    const/16 v1, 0x59

    const/16 v3, 0xbc7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 869
    const/16 v1, 0x5a

    const/16 v3, 0xbc8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 870
    const/16 v1, 0x5c

    const/16 v3, 0xbca

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    const/16 v1, 0x5d

    const/16 v3, 0xbcb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 872
    const/16 v1, 0x5e

    const/16 v3, 0xbcc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 873
    const/16 v1, 0x5f

    const/16 v3, 0xbcd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 875
    const/16 v1, 0x60

    const/16 v3, 0xbd0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 877
    const/16 v1, 0x7b

    const/16 v3, 0xbd7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 878
    const/16 v1, 0x7c

    const/16 v3, 0xbf0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    const/16 v1, 0x7d

    const/16 v3, 0xbf1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    const/16 v1, 0x7e

    const/16 v3, 0xbf2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    const/16 v1, 0x7f

    const/16 v3, 0xbf9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 884
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 885
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TELUGU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const/4 v1, 0x0

    const/16 v3, 0xc01

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 887
    const/4 v1, 0x1

    const/16 v3, 0xc02

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    const/4 v1, 0x2

    const/16 v3, 0xc03

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 889
    const/4 v1, 0x3

    const/16 v3, 0xc05

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    const/4 v1, 0x4

    const/16 v3, 0xc06

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 891
    const/4 v1, 0x5

    const/16 v3, 0xc07

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 892
    const/4 v1, 0x6

    const/16 v3, 0xc08

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    const/4 v1, 0x7

    const/16 v3, 0xc09

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 894
    const/16 v1, 0x8

    const/16 v3, 0xc0a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    const/16 v1, 0x9

    const/16 v3, 0xc0b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 896
    const/16 v1, 0xb

    const/16 v3, 0xc0c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    const/16 v1, 0xe

    const/16 v3, 0xc0e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    const/16 v1, 0xf

    const/16 v3, 0xc0f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 900
    const/16 v1, 0x10

    const/16 v3, 0xc10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    const/16 v1, 0x12

    const/16 v3, 0xc12

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    const/16 v1, 0x13

    const/16 v3, 0xc13

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    const/16 v1, 0x14

    const/16 v3, 0xc14

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    const/16 v1, 0x15

    const/16 v3, 0xc15

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 905
    const/16 v1, 0x16

    const/16 v3, 0xc16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    const/16 v1, 0x17

    const/16 v3, 0xc17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    const/16 v1, 0x18

    const/16 v3, 0xc18

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    const/16 v1, 0x19

    const/16 v3, 0xc19

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    const/16 v1, 0x1a

    const/16 v3, 0xc1a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    const/16 v1, 0x1c

    const/16 v3, 0xc1b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 911
    const/16 v1, 0x1d

    const/16 v3, 0xc1c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 912
    const/16 v1, 0x1e

    const/16 v3, 0xc1d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 913
    const/16 v1, 0x1f

    const/16 v3, 0xc1e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    const/16 v1, 0x22

    const/16 v3, 0xc1f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    const/16 v1, 0x23

    const/16 v3, 0xc20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 917
    const/16 v1, 0x24

    const/16 v3, 0xc21

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 918
    const/16 v1, 0x25

    const/16 v3, 0xc22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    const/16 v1, 0x26

    const/16 v3, 0xc23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    const/16 v1, 0x27

    const/16 v3, 0xc24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    const/16 v1, 0x2a

    const/16 v3, 0xc25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 922
    const/16 v1, 0x2b

    const/16 v3, 0xc26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    const/16 v1, 0x2d

    const/16 v3, 0xc27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    const/16 v1, 0x2f

    const/16 v3, 0xc28

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    const/16 v1, 0x3d

    const/16 v3, 0xc2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    const/16 v1, 0x3e

    const/16 v3, 0xc2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    const/16 v1, 0x40

    const/16 v3, 0xc2c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 930
    const/16 v1, 0x41

    const/16 v3, 0xc2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    const/16 v1, 0x42

    const/16 v3, 0xc2e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    const/16 v1, 0x43

    const/16 v3, 0xc2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    const/16 v1, 0x44

    const/16 v3, 0xc30

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    const/16 v1, 0x45

    const/16 v3, 0xd31

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    const/16 v1, 0x46

    const/16 v3, 0xc32

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    const/16 v1, 0x47

    const/16 v3, 0xc33

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    const/16 v1, 0x49

    const/16 v3, 0xc35

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    const/16 v1, 0x4a

    const/16 v3, 0xc36

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    const/16 v1, 0x4b

    const/16 v3, 0xc37

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    const/16 v1, 0x4c

    const/16 v3, 0xc38

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    const/16 v1, 0x4d

    const/16 v3, 0xc39

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    const/16 v1, 0x4f

    const/16 v3, 0xc3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    const/16 v1, 0x50

    const/16 v3, 0xc3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    const/16 v1, 0x51

    const/16 v3, 0xc3f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 946
    const/16 v1, 0x52

    const/16 v3, 0xc40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    const/16 v1, 0x53

    const/16 v3, 0xc41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    const/16 v1, 0x54

    const/16 v3, 0xc42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    const/16 v1, 0x55

    const/16 v3, 0xc43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    const/16 v1, 0x56

    const/16 v3, 0xc44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    const/16 v1, 0x58

    const/16 v3, 0xc46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    const/16 v1, 0x59

    const/16 v3, 0xc47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    const/16 v1, 0x5a

    const/16 v3, 0xc48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    const/16 v1, 0x5c

    const/16 v3, 0xc4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    const/16 v1, 0x5d

    const/16 v3, 0xc4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    const/16 v1, 0x5e

    const/16 v3, 0xc4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    const/16 v1, 0x5f

    const/16 v3, 0xc4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    const/16 v1, 0x60

    const/16 v3, 0xc55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    const/16 v1, 0x7b

    const/16 v3, 0xc56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    const/16 v1, 0x7c

    const/16 v3, 0xc60

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    const/16 v1, 0x7d

    const/16 v3, 0xc61

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    const/16 v1, 0x7e

    const/16 v3, 0xc62

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    const/16 v1, 0x7f

    const/16 v3, 0xc63

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 969
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->URDU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const/4 v1, 0x0

    const/16 v3, 0x627

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    const/4 v1, 0x1

    const/16 v3, 0x622

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    const/4 v1, 0x2

    const/16 v3, 0x628

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 973
    const/4 v1, 0x3

    const/16 v3, 0x67b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    const/4 v1, 0x4

    const/16 v3, 0x680

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    const/4 v1, 0x5

    const/16 v3, 0x67e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    const/4 v1, 0x6

    const/16 v3, 0x6a6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    const/4 v1, 0x7

    const/16 v3, 0x62a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    const/16 v1, 0x8

    const/16 v3, 0x6c2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    const/16 v1, 0x9

    const/16 v3, 0x67f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    const/16 v1, 0xb

    const/16 v3, 0x679

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    const/16 v1, 0xc

    const/16 v3, 0x67d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    const/16 v1, 0xe

    const/16 v3, 0x67a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    const/16 v1, 0xf

    const/16 v3, 0x67c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    const/16 v1, 0x10

    const/16 v3, 0x62b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    const/16 v1, 0x11

    const/16 v3, 0x62c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    const/16 v1, 0x12

    const/16 v3, 0x681

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    const/16 v1, 0x13

    const/16 v3, 0x684

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    const/16 v1, 0x14

    const/16 v3, 0x683

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    const/16 v1, 0x15

    const/16 v3, 0x685

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 991
    const/16 v1, 0x16

    const/16 v3, 0x686

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 992
    const/16 v1, 0x17

    const/16 v3, 0x687

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    const/16 v1, 0x18

    const/16 v3, 0x62d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    const/16 v1, 0x19

    const/16 v3, 0x62e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 995
    const/16 v1, 0x1a

    const/16 v3, 0x62f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    const/16 v1, 0x1c

    const/16 v3, 0x68c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    const/16 v1, 0x1d

    const/16 v3, 0x688

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    const/16 v1, 0x1e

    const/16 v3, 0x689

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    const/16 v1, 0x1f

    const/16 v3, 0x68a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    const/16 v1, 0x22

    const/16 v3, 0x68f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1002
    const/16 v1, 0x23

    const/16 v3, 0x68d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    const/16 v1, 0x24

    const/16 v3, 0x630

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    const/16 v1, 0x25

    const/16 v3, 0x631

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    const/16 v1, 0x26

    const/16 v3, 0x691

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    const/16 v1, 0x27

    const/16 v3, 0x693

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1007
    const/16 v1, 0x2a

    const/16 v3, 0x699

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1008
    const/16 v1, 0x2b

    const/16 v3, 0x632

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    const/16 v1, 0x2d

    const/16 v3, 0x696

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    const/16 v1, 0x2f

    const/16 v3, 0x698

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    const/16 v1, 0x3c

    const/16 v3, 0x69a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    const/16 v1, 0x3d

    const/16 v3, 0x633

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1014
    const/16 v1, 0x3e

    const/16 v3, 0x634

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    const/16 v1, 0x40

    const/16 v3, 0x635

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    const/16 v1, 0x41

    const/16 v3, 0x636

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    const/16 v1, 0x42

    const/16 v3, 0x637

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    const/16 v1, 0x43

    const/16 v3, 0x638

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    const/16 v1, 0x44

    const/16 v3, 0x639

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    const/16 v1, 0x45

    const/16 v3, 0x641

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    const/16 v1, 0x46

    const/16 v3, 0x642

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    const/16 v1, 0x47

    const/16 v3, 0x6a9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    const/16 v1, 0x48

    const/16 v3, 0x6aa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    const/16 v1, 0x49

    const/16 v3, 0x6ab

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    const/16 v1, 0x4a

    const/16 v3, 0x6af

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    const/16 v1, 0x4b

    const/16 v3, 0x6b3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    const/16 v1, 0x4c

    const/16 v3, 0x6b1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    const/16 v1, 0x4d

    const/16 v3, 0x644

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    const/16 v1, 0x4e

    const/16 v3, 0x645

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    const/16 v1, 0x4f

    const/16 v3, 0x646

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    const/16 v1, 0x50

    const/16 v3, 0x6ba

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    const/16 v1, 0x51

    const/16 v3, 0x6bb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    const/16 v1, 0x52

    const/16 v3, 0x6bc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    const/16 v1, 0x53

    const/16 v3, 0x648

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    const/16 v1, 0x54

    const/16 v3, 0x6c4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1038
    const/16 v1, 0x55

    const/16 v3, 0x6d5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    const/16 v1, 0x56

    const/16 v3, 0x6c1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1040
    const/16 v1, 0x57

    const/16 v3, 0x6be

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1041
    const/16 v1, 0x58

    const/16 v3, 0x621

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1042
    const/16 v1, 0x59

    const/16 v3, 0x6cc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    const/16 v1, 0x5a

    const/16 v3, 0x6d0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1044
    const/16 v1, 0x5b

    const/16 v3, 0x6d2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1045
    const/16 v1, 0x5c

    const/16 v3, 0x64d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    const/16 v1, 0x5d

    const/16 v3, 0x650

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1047
    const/16 v1, 0x5e

    const/16 v3, 0x64f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1048
    const/16 v1, 0x5f

    const/16 v3, 0x657

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1050
    const/16 v1, 0x60

    const/16 v3, 0x654

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1052
    const/16 v1, 0x7b

    const/16 v3, 0x655

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    const/16 v1, 0x7c

    const/16 v3, 0x651

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1054
    const/16 v1, 0x7d

    const/16 v3, 0x653

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1055
    const/16 v1, 0x7e

    const/16 v3, 0x656

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1056
    const/16 v1, 0x7f

    const/16 v3, 0x670

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1059
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1060
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const/16 v1, 0xa

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1062
    const/16 v1, 0x14

    const/16 v3, 0x5e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    const/16 v1, 0x28

    const/16 v3, 0x7b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1064
    const/16 v1, 0x29

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    const/16 v1, 0x2f

    const/16 v3, 0x5c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    const/16 v1, 0x3c

    const/16 v3, 0x5b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1067
    const/16 v1, 0x3d

    const/16 v3, 0x7e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    const/16 v1, 0x3e

    const/16 v3, 0x5d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    const/16 v1, 0x40

    const/16 v3, 0x7c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    const/16 v1, 0x65

    const/16 v3, 0x20ac

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1074
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TURKISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const/16 v1, 0x47

    const/16 v3, 0x11e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    const/16 v1, 0x49

    const/16 v3, 0x130

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    const/16 v1, 0x53

    const/16 v3, 0x15e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    const/16 v1, 0x63

    const/16 v3, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    const/16 v1, 0x67

    const/16 v3, 0x11f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    const/16 v1, 0x69

    const/16 v3, 0x131

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    const/16 v1, 0x73

    const/16 v3, 0x15f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1085
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->SPANISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const/16 v1, 0x9

    const/16 v3, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    const/16 v1, 0x41

    const/16 v3, 0xc1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    const/16 v1, 0x49

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    const/16 v1, 0x4f

    const/16 v3, 0xd3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    const/16 v1, 0x55

    const/16 v3, 0xda

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    const/16 v1, 0x61

    const/16 v3, 0xe1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    const/16 v1, 0x69

    const/16 v3, 0xed

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    const/16 v1, 0x6f

    const/16 v3, 0xf3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    const/16 v1, 0x75

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1099
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PORTUGUESE:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const/4 v1, 0x5

    const/16 v3, 0xea

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    const/16 v1, 0x9

    const/16 v3, 0xe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    const/16 v1, 0xb

    const/16 v3, 0xd4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    const/16 v1, 0xc

    const/16 v3, 0xf4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    const/16 v1, 0xe

    const/16 v3, 0xc1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    const/16 v1, 0xf

    const/16 v3, 0xe1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    const/16 v1, 0x12

    const/16 v3, 0x3a6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    const/16 v1, 0x13

    const/16 v3, 0x393

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    const/16 v1, 0x15

    const/16 v3, 0x3a9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    const/16 v1, 0x16

    const/16 v3, 0x3a0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1111
    const/16 v1, 0x17

    const/16 v3, 0x3a8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    const/16 v1, 0x18

    const/16 v3, 0x3a3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    const/16 v1, 0x19

    const/16 v3, 0x398

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    const/16 v1, 0x1f

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    const/16 v1, 0x41

    const/16 v3, 0xc0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    const/16 v1, 0x49

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1118
    const/16 v1, 0x4f

    const/16 v3, 0xd3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    const/16 v1, 0x55

    const/16 v3, 0xda

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1121
    const/16 v1, 0x5b

    const/16 v3, 0xc3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    const/16 v1, 0x5c

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1123
    const/16 v1, 0x5c

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    const/16 v1, 0x61

    const/16 v3, 0xc2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1126
    const/16 v1, 0x69

    const/16 v3, 0xed

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1127
    const/16 v1, 0x6f

    const/16 v3, 0xf3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1129
    const/16 v1, 0x75

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    const/16 v1, 0x7b

    const/16 v3, 0xe3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1131
    const/16 v1, 0x7c

    const/16 v3, 0xf5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    const/16 v1, 0x7f

    const/16 v3, 0xe2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1136
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->BENGALI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1139
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1140
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1141
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1142
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1143
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1145
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1156
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1159
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1160
    const/16 v1, 0x19

    const/16 v3, 0x9e6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1161
    const/16 v1, 0x1a

    const/16 v3, 0x9e7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1162
    const/16 v1, 0x1c

    const/16 v3, 0x9e8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    const/16 v1, 0x1d

    const/16 v3, 0x9e9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    const/16 v1, 0x1e

    const/16 v3, 0x9ea

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    const/16 v1, 0x1f

    const/16 v3, 0x9eb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    const/16 v1, 0x20

    const/16 v3, 0x9ec

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    const/16 v1, 0x21

    const/16 v3, 0x9ed

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    const/16 v1, 0x22

    const/16 v3, 0x9ee

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    const/16 v1, 0x23

    const/16 v3, 0x9ef

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    const/16 v1, 0x24

    const/16 v3, 0x9df

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    const/16 v1, 0x25

    const/16 v3, 0x9e0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    const/16 v1, 0x26

    const/16 v3, 0x9e1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    const/16 v1, 0x27

    const/16 v3, 0x9e2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    const/16 v1, 0x2a

    const/16 v3, 0x9e3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    const/16 v1, 0x2b

    const/16 v3, 0x9f2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    const/16 v1, 0x2c

    const/16 v3, 0x9f3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    const/16 v1, 0x2d

    const/16 v3, 0x9f4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1179
    const/16 v1, 0x2e

    const/16 v3, 0x9f5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1181
    const/16 v1, 0x30

    const/16 v3, 0x9f6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    const/16 v1, 0x31

    const/16 v3, 0x9f7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    const/16 v1, 0x32

    const/16 v3, 0x9f8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    const/16 v1, 0x33

    const/16 v3, 0x9f9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    const/16 v1, 0x34

    const/16 v3, 0x9fa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1187
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1190
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1192
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1193
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1194
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1195
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1197
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1198
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1201
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1203
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1204
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1205
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1206
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1207
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1209
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1211
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1218
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->GUJARATI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1221
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1222
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1238
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1239
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    const/16 v1, 0x1c

    const/16 v3, 0xae6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1245
    const/16 v1, 0x1d

    const/16 v3, 0xae7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    const/16 v1, 0x1e

    const/16 v3, 0xae8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    const/16 v1, 0x1f

    const/16 v3, 0xae9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    const/16 v1, 0x20

    const/16 v3, 0xaea

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    const/16 v1, 0x21

    const/16 v3, 0xaeb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    const/16 v1, 0x22

    const/16 v3, 0xaec

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    const/16 v1, 0x23

    const/16 v3, 0xaed

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    const/16 v1, 0x24

    const/16 v3, 0xaee

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    const/16 v1, 0x25

    const/16 v3, 0xaef

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1256
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1262
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1263
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1272
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1273
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1279
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1280
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1285
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1286
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->HINDI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1289
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1290
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1291
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    const/16 v1, 0x1c

    const/16 v3, 0x966

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    const/16 v1, 0x1d

    const/16 v3, 0x967

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    const/16 v1, 0x1e

    const/16 v3, 0x968

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    const/16 v1, 0x1f

    const/16 v3, 0x969

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    const/16 v1, 0x20

    const/16 v3, 0x96a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    const/16 v1, 0x21

    const/16 v3, 0x96b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    const/16 v1, 0x22

    const/16 v3, 0x96c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    const/16 v1, 0x23

    const/16 v3, 0x96d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    const/16 v1, 0x24

    const/16 v3, 0x96e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    const/16 v1, 0x25

    const/16 v3, 0x96f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    const/16 v1, 0x26

    const/16 v3, 0x951

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    const/16 v1, 0x27

    const/16 v3, 0x952

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    const/16 v1, 0x2a

    const/16 v3, 0x953

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    const/16 v1, 0x2b

    const/16 v3, 0x954

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    const/16 v1, 0x2c

    const/16 v3, 0x958

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    const/16 v1, 0x2d

    const/16 v3, 0x959

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    const/16 v1, 0x2e

    const/16 v3, 0x95a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    const/16 v1, 0x30

    const/16 v3, 0x95b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    const/16 v1, 0x31

    const/16 v3, 0x95c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    const/16 v1, 0x32

    const/16 v3, 0x95d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    const/16 v1, 0x33

    const/16 v3, 0x95e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    const/16 v1, 0x34

    const/16 v3, 0x95f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    const/16 v1, 0x35

    const/16 v3, 0x960

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    const/16 v1, 0x36

    const/16 v3, 0x961

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    const/16 v1, 0x37

    const/16 v3, 0x962

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    const/16 v1, 0x38

    const/16 v3, 0x963

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1340
    const/16 v1, 0x39

    const/16 v3, 0x970

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1341
    const/16 v1, 0x3a

    const/16 v3, 0x971

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1343
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1360
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1363
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1364
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1373
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->KANNADA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1377
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1383
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1384
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1385
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1387
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1392
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1398
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    const/16 v1, 0x1c

    const/16 v3, 0xce6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    const/16 v1, 0x1d

    const/16 v3, 0xce7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    const/16 v1, 0x1e

    const/16 v3, 0xce8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    const/16 v1, 0x1f

    const/16 v3, 0xce9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    const/16 v1, 0x20

    const/16 v3, 0xcea

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    const/16 v1, 0x21

    const/16 v3, 0xceb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1406
    const/16 v1, 0x22

    const/16 v3, 0xcec

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    const/16 v1, 0x23

    const/16 v3, 0xced

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    const/16 v1, 0x24

    const/16 v3, 0xcee

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    const/16 v1, 0x25

    const/16 v3, 0xcef

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    const/16 v1, 0x26

    const/16 v3, 0xcde

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    const/16 v1, 0x27

    const/16 v3, 0xcf1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    const/16 v1, 0x2a

    const/16 v3, 0xcf2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1417
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1418
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1419
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1420
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1421
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1422
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1423
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1424
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1425
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1426
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1427
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1428
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1430
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1431
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1432
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1434
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1435
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1436
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1437
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1438
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1439
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1440
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1444
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1445
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->MALAYALAM:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1447
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1448
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1449
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1450
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1451
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1452
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1453
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1454
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1455
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1456
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1457
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1458
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1459
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1461
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1462
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1463
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1464
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1465
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1466
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1467
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1468
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1469
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1470
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1471
    const/16 v1, 0x1c

    const/16 v3, 0xd66

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1472
    const/16 v1, 0x1d

    const/16 v3, 0xd67

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1473
    const/16 v1, 0x1e

    const/16 v3, 0xd68

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1474
    const/16 v1, 0x1f

    const/16 v3, 0xd69

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    const/16 v1, 0x20

    const/16 v3, 0xd6a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1477
    const/16 v1, 0x21

    const/16 v3, 0xd6b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1478
    const/16 v1, 0x22

    const/16 v3, 0xd6c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    const/16 v1, 0x23

    const/16 v3, 0xd6d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    const/16 v1, 0x24

    const/16 v3, 0xd6e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    const/16 v1, 0x25

    const/16 v3, 0xd6f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1482
    const/16 v1, 0x26

    const/16 v3, 0xd70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1483
    const/16 v1, 0x27

    const/16 v3, 0xd71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1484
    const/16 v1, 0x2a

    const/16 v3, 0xd72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1485
    const/16 v1, 0x2b

    const/16 v3, 0xd73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1486
    const/16 v1, 0x2c

    const/16 v3, 0xd74

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1487
    const/16 v1, 0x2d

    const/16 v3, 0xd75

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1488
    const/16 v1, 0x2e

    const/16 v3, 0xd7a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1490
    const/16 v1, 0x30

    const/16 v3, 0xd7b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1491
    const/16 v1, 0x31

    const/16 v3, 0xd7c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1492
    const/16 v1, 0x32

    const/16 v3, 0xd7d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    const/16 v1, 0x33

    const/16 v3, 0xd7e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1494
    const/16 v1, 0x34

    const/16 v3, 0xd7f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1496
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1497
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1498
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1499
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1500
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1501
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1502
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1503
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1504
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1505
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1506
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1507
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1508
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1509
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1510
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1512
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1513
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1514
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1515
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1516
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1517
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1518
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1519
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1520
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1521
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1522
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1525
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1526
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->ORIYA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1528
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1529
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1530
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1531
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1532
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1533
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1534
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1535
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1536
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1537
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1538
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1539
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1540
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1542
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1543
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1544
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1545
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1546
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1547
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1548
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1549
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1550
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1551
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1552
    const/16 v1, 0x1c

    const/16 v3, 0xb66

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1553
    const/16 v1, 0x1d

    const/16 v3, 0xb67

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1554
    const/16 v1, 0x1e

    const/16 v3, 0xb68

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1555
    const/16 v1, 0x1f

    const/16 v3, 0xb69

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1557
    const/16 v1, 0x20

    const/16 v3, 0xb6a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1558
    const/16 v1, 0x21

    const/16 v3, 0xb6b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1559
    const/16 v1, 0x22

    const/16 v3, 0xb6c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1560
    const/16 v1, 0x23

    const/16 v3, 0xb6d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1561
    const/16 v1, 0x24

    const/16 v3, 0xb6e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1562
    const/16 v1, 0x25

    const/16 v3, 0xb6f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1563
    const/16 v1, 0x26

    const/16 v3, 0xb5c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1564
    const/16 v1, 0x27

    const/16 v3, 0xb5d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1565
    const/16 v1, 0x2a

    const/16 v3, 0xb5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1566
    const/16 v1, 0x2b

    const/16 v3, 0xb70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1567
    const/16 v1, 0x2c

    const/16 v3, 0xb71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1569
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1570
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1571
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1572
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1573
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1574
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1575
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1576
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1577
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1578
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1579
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1580
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1581
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1582
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1583
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1585
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1586
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1587
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1588
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1589
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1590
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1591
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1592
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1593
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1594
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1595
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1598
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1599
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PUNJABI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1601
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1602
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1603
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1604
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1605
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1606
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1607
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1608
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1609
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1610
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1611
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1612
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1613
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1615
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1616
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1617
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1618
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1619
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1620
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1621
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1622
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1623
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1624
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1625
    const/16 v1, 0x1c

    const/16 v3, 0xa66

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1626
    const/16 v1, 0x1d

    const/16 v3, 0xa67

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1627
    const/16 v1, 0x1e

    const/16 v3, 0xa68

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1628
    const/16 v1, 0x1f

    const/16 v3, 0xa69

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1630
    const/16 v1, 0x20

    const/16 v3, 0xa6a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1631
    const/16 v1, 0x21

    const/16 v3, 0xa6b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1632
    const/16 v1, 0x22

    const/16 v3, 0xa6c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1633
    const/16 v1, 0x23

    const/16 v3, 0xa6d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    const/16 v1, 0x24

    const/16 v3, 0xa6e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1635
    const/16 v1, 0x25

    const/16 v3, 0xa6f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1636
    const/16 v1, 0x26

    const/16 v3, 0xa59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1637
    const/16 v1, 0x27

    const/16 v3, 0xa5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1638
    const/16 v1, 0x2a

    const/16 v3, 0xa5b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1639
    const/16 v1, 0x2b

    const/16 v3, 0xa5c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1640
    const/16 v1, 0x2c

    const/16 v3, 0xa5e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1641
    const/16 v1, 0x2d

    const/16 v3, 0xa75

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1643
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1644
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1645
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1646
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1647
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1648
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1650
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1651
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1652
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1653
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1654
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1655
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1657
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1659
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1660
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1661
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1662
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1663
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1664
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1665
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1666
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1667
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1668
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1669
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1672
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1673
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TAMIL:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1675
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1676
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1677
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1678
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1679
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1680
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1681
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1682
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1683
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1684
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1685
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1686
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1687
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1689
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1690
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1691
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1692
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1693
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1694
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1695
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1696
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1697
    const/16 v1, 0x19

    const/16 v3, 0x964

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1698
    const/16 v1, 0x1a

    const/16 v3, 0x965

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    const/16 v1, 0x1c

    const/16 v3, 0xbe6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1700
    const/16 v1, 0x1d

    const/16 v3, 0xbe7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1701
    const/16 v1, 0x1e

    const/16 v3, 0xbe8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1702
    const/16 v1, 0x1f

    const/16 v3, 0xbe9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1704
    const/16 v1, 0x20

    const/16 v3, 0xbea

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1705
    const/16 v1, 0x21

    const/16 v3, 0xbeb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1706
    const/16 v1, 0x22

    const/16 v3, 0xbec

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1707
    const/16 v1, 0x23

    const/16 v3, 0xbed

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1708
    const/16 v1, 0x24

    const/16 v3, 0xbee

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1709
    const/16 v1, 0x25

    const/16 v3, 0xbef

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1710
    const/16 v1, 0x26

    const/16 v3, 0xbf3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1711
    const/16 v1, 0x27

    const/16 v3, 0xbf4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1712
    const/16 v1, 0x2a

    const/16 v3, 0xbf5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1713
    const/16 v1, 0x2b

    const/16 v3, 0xbf6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1714
    const/16 v1, 0x2c

    const/16 v3, 0xbf7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1715
    const/16 v1, 0x2d

    const/16 v3, 0xbf8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1716
    const/16 v1, 0x2e

    const/16 v3, 0xbfa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1718
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1719
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1720
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1721
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1723
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1724
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1726
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1727
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1728
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1729
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1731
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1732
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1734
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1736
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1737
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1738
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1739
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1741
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1744
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1747
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1748
    .restart local v0       #table:Landroid/util/SparseIntArray;
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TELUGU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    const/4 v1, 0x1

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    const/4 v1, 0x2

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    const/4 v1, 0x3

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    const/4 v1, 0x4

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    const/4 v1, 0x5

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    const/4 v1, 0x6

    const/16 v3, 0xa4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    const/4 v1, 0x7

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    const/16 v1, 0x8

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    const/16 v1, 0x9

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    const/16 v1, 0xb

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1760
    const/16 v1, 0xc

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    const/16 v1, 0xe

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    const/16 v1, 0xf

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1764
    const/16 v1, 0x10

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    const/16 v1, 0x11

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    const/16 v1, 0x12

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    const/16 v1, 0x13

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    const/16 v1, 0x15

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    const/16 v1, 0x16

    const/16 v3, 0x5f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    const/16 v1, 0x17

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    const/16 v1, 0x18

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    const/16 v1, 0x1c

    const/16 v3, 0xc66

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    const/16 v1, 0x1d

    const/16 v3, 0xc67

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    const/16 v1, 0x1e

    const/16 v3, 0xc68

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1775
    const/16 v1, 0x1f

    const/16 v3, 0xc69

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    const/16 v1, 0x20

    const/16 v3, 0xc6a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1778
    const/16 v1, 0x21

    const/16 v3, 0xc6b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    const/16 v1, 0x22

    const/16 v3, 0x6cc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    const/16 v1, 0x23

    const/16 v3, 0x6cd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1781
    const/16 v1, 0x24

    const/16 v3, 0xc6e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    const/16 v1, 0x25

    const/16 v3, 0xc6f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    const/16 v1, 0x26

    const/16 v3, 0xc58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    const/16 v1, 0x27

    const/16 v3, 0xc59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    const/16 v1, 0x2a

    const/16 v3, 0xc78

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    const/16 v1, 0x2b

    const/16 v3, 0xc79

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    const/16 v1, 0x2c

    const/16 v3, 0xc7a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    const/16 v1, 0x2d

    const/16 v3, 0xc7b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    const/16 v1, 0x2e

    const/16 v3, 0xc7c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    const/16 v1, 0x30

    const/16 v3, 0xc7d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    const/16 v1, 0x31

    const/16 v3, 0xc7e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    const/16 v1, 0x32

    const/16 v3, 0xc7f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    const/16 v1, 0x41

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    const/16 v1, 0x42

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    const/16 v1, 0x43

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    const/16 v1, 0x44

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    const/16 v1, 0x45

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1800
    const/16 v1, 0x46

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    const/16 v1, 0x47

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    const/16 v1, 0x48

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1803
    const/16 v1, 0x49

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1804
    const/16 v1, 0x4a

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    const/16 v1, 0x4b

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    const/16 v1, 0x4c

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    const/16 v1, 0x4d

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    const/16 v1, 0x4e

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1809
    const/16 v1, 0x4f

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    const/16 v1, 0x50

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1812
    const/16 v1, 0x51

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    const/16 v1, 0x52

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    const/16 v1, 0x53

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1815
    const/16 v1, 0x54

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    const/16 v1, 0x55

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    const/16 v1, 0x56

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1818
    const/16 v1, 0x57

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1819
    const/16 v1, 0x58

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1820
    const/16 v1, 0x59

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1821
    const/16 v1, 0x5a

    const/16 v3, 0x5a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1824
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .end local v0           #table:Landroid/util/SparseIntArray;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmAlphabetTables;->copyTable(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 1825
    .local v4, table:Landroid/util/SparseIntArray;
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->URDU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-interface {p3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1827
    const/4 v0, 0x1

    const/16 v1, 0xa3

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1828
    const/4 v0, 0x2

    const/16 v1, 0x24

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1829
    const/4 v0, 0x3

    const/16 v1, 0xa5

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1830
    const/4 v0, 0x4

    const/16 v1, 0xbf

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1831
    const/4 v0, 0x5

    const/16 v1, 0x22

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1832
    const/4 v0, 0x6

    const/16 v1, 0xa4

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1833
    const/4 v0, 0x7

    const/16 v1, 0x25

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1834
    const/16 v0, 0x8

    const/16 v1, 0x26

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    const/16 v0, 0x9

    const/16 v1, 0x27

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    const/16 v0, 0xb

    const/16 v1, 0x2a

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1837
    const/16 v0, 0xc

    const/16 v1, 0x2b

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1838
    const/16 v0, 0xe

    const/16 v1, 0x2d

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1839
    const/16 v0, 0xf

    const/16 v1, 0x2f

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    const/16 v0, 0x10

    const/16 v1, 0x3c

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1842
    const/16 v0, 0x11

    const/16 v1, 0x3d

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1843
    const/16 v0, 0x12

    const/16 v1, 0x3e

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1844
    const/16 v0, 0x13

    const/16 v1, 0xa1

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1845
    const/16 v0, 0x15

    const/16 v1, 0xa1

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1846
    const/16 v0, 0x16

    const/16 v1, 0x5f

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1847
    const/16 v0, 0x17

    const/16 v1, 0x23

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1848
    const/16 v0, 0x18

    const/16 v1, 0x2a

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1849
    const/16 v0, 0x19

    const/16 v1, 0x600

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1850
    const/16 v0, 0x1a

    const/16 v1, 0x601

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1851
    const/16 v0, 0x1c

    const/16 v1, 0x6f0

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    const/16 v0, 0x1d

    const/16 v1, 0x6f1

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1853
    const/16 v0, 0x1e

    const/16 v1, 0x6f2

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    const/16 v0, 0x1f

    const/16 v1, 0x6f3

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1856
    const/16 v0, 0x20

    const/16 v1, 0x6f4

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1857
    const/16 v0, 0x21

    const/16 v1, 0x6f5

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1858
    const/16 v0, 0x22

    const/16 v1, 0x6f6

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1859
    const/16 v0, 0x23

    const/16 v1, 0x6f7

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1860
    const/16 v0, 0x24

    const/16 v1, 0x6f8

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1861
    const/16 v0, 0x25

    const/16 v1, 0x6f9

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1862
    const/16 v0, 0x26

    const/16 v1, 0x60c

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1863
    const/16 v0, 0x27

    const/16 v1, 0x60d

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1864
    const/16 v0, 0x2a

    const/16 v1, 0x60e

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1865
    const/16 v0, 0x2b

    const/16 v1, 0x60f

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1866
    const/16 v0, 0x2c

    const/16 v1, 0x610

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1867
    const/16 v0, 0x2d

    const/16 v1, 0x611

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1868
    const/16 v0, 0x2e

    const/16 v1, 0x612

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    const/16 v0, 0x30

    const/16 v1, 0x613

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    const/16 v0, 0x31

    const/16 v1, 0x614

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1872
    const/16 v0, 0x32

    const/16 v1, 0x61b

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1873
    const/16 v0, 0x33

    const/16 v1, 0x61f

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    const/16 v0, 0x34

    const/16 v1, 0x640

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1875
    const/16 v0, 0x35

    const/16 v1, 0x652

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    const/16 v0, 0x36

    const/16 v1, 0x658

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1877
    const/16 v0, 0x37

    const/16 v1, 0x66b

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1878
    const/16 v0, 0x38

    const/16 v1, 0x66c

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1879
    const/16 v0, 0x39

    const/16 v1, 0x672

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1880
    const/16 v0, 0x3a

    const/16 v1, 0x673

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1881
    const/16 v0, 0x3b

    const/16 v1, 0x6cd

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    const/16 v0, 0x3f

    const/16 v1, 0x6d4

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1884
    const/16 v0, 0x41

    const/16 v1, 0x41

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    const/16 v0, 0x42

    const/16 v1, 0x42

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1886
    const/16 v0, 0x43

    const/16 v1, 0x43

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1887
    const/16 v0, 0x44

    const/16 v1, 0x44

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    const/16 v0, 0x45

    const/16 v1, 0x45

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1889
    const/16 v0, 0x46

    const/16 v1, 0x46

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    const/16 v0, 0x47

    const/16 v1, 0x47

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1891
    const/16 v0, 0x48

    const/16 v1, 0x48

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1892
    const/16 v0, 0x49

    const/16 v1, 0x49

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    const/16 v0, 0x4a

    const/16 v1, 0x4a

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1894
    const/16 v0, 0x4b

    const/16 v1, 0x4b

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1895
    const/16 v0, 0x4c

    const/16 v1, 0x4c

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1896
    const/16 v0, 0x4d

    const/16 v1, 0x4d

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1897
    const/16 v0, 0x4e

    const/16 v1, 0x4e

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1898
    const/16 v0, 0x4f

    const/16 v1, 0x4f

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1900
    const/16 v0, 0x50

    const/16 v1, 0x50

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1901
    const/16 v0, 0x51

    const/16 v1, 0x51

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1902
    const/16 v0, 0x52

    const/16 v1, 0x52

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1903
    const/16 v0, 0x53

    const/16 v1, 0x53

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1904
    const/16 v0, 0x54

    const/16 v1, 0x54

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1905
    const/16 v0, 0x55

    const/16 v1, 0x55

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1906
    const/16 v0, 0x56

    const/16 v1, 0x56

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1907
    const/16 v0, 0x57

    const/16 v1, 0x57

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1908
    const/16 v0, 0x58

    const/16 v1, 0x58

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1909
    const/16 v0, 0x59

    const/16 v1, 0x59

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1910
    const/16 v0, 0x5a

    const/16 v1, 0x5a

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1913
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v9, v1

    .end local v1           #i$:I
    .local v9, i$:I
    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    move v2, v9

    .end local v9           #i$:I
    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1914
    .local v1, language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    .line 1915
    .end local v4           #table:Landroid/util/SparseIntArray;
    .local v6, table:Landroid/util/SparseIntArray;
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 1916
    .local v4, revTable:Landroid/util/SparseIntArray;
    invoke-interface {p0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 1918
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 1919
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1918
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1913
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    .end local v6           #table:Landroid/util/SparseIntArray;
    .local v4, table:Landroid/util/SparseIntArray;
    goto :goto_0

    .line 1924
    .end local v5           #size:I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object p0

    .end local v0           #arr$:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .local p0, arr$:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    array-length v2, p0

    .end local v3           #len$:I
    .local v2, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .local v0, i$:I
    move p1, v1

    .end local v1           #i:I
    .local p1, i:I
    move-object v1, v4

    .end local v4           #table:Landroid/util/SparseIntArray;
    .local v1, table:Landroid/util/SparseIntArray;
    :goto_2
    if-ge v0, v2, :cond_3

    aget-object p1, p0, v0

    .line 1925
    .local p1, language:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 1926
    .end local v1           #table:Landroid/util/SparseIntArray;
    .restart local v4       #table:Landroid/util/SparseIntArray;
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 1927
    .local v1, revTable:Landroid/util/SparseIntArray;
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1929
    .local v3, size:I
    const/4 p1, 0x0

    .local p1, i:I
    :goto_3
    if-ge p1, v3, :cond_2

    .line 1930
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1929
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1924
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object v1, v4

    .end local v4           #table:Landroid/util/SparseIntArray;
    .local v1, table:Landroid/util/SparseIntArray;
    goto :goto_2

    .line 1933
    .end local v3           #size:I
    :cond_3
    return-void
.end method
