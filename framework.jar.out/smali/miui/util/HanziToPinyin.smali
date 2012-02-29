.class public Lmiui/util/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator; = null

.field private static final FIRST_PINYIN_UNIHAN:Ljava/lang/String; = "\u5416"

.field private static final FIRST_UNIHAN:C = '\u3400'

.field private static final LAST_PINYIN_UNIHAN:Ljava/lang/String; = "\u5497"

.field private static final PINYINS:[[B = null

.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static final UNIHANS:[C

.field private static sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lmiui/util/HanziToPinyin;

.field private static sLastNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sT9Map:[C


# instance fields
.field private final mHasChinaCollator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 39
    const/16 v0, 0x196

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/HanziToPinyin;->UNIHANS:[C

    .line 92
    const/16 v0, 0x196

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [B

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [B

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [B

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [B

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [B

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [B

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [B

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [B

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [B

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [B

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [B

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [B

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [B

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [B

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [B

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [B

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [B

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [B

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [B

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [B

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [B

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [B

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [B

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [B

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [B

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [B

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [B

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [B

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [B

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [B

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [B

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [B

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [B

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [B

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [B

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [B

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [B

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [B

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [B

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [B

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [B

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [B

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [B

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [B

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [B

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [B

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [B

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [B

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [B

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [B

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [B

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [B

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [B

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [B

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [B

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [B

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [B

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [B

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [B

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [B

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [B

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [B

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [B

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [B

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [B

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [B

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [B

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [B

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [B

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [B

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [B

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [B

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [B

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [B

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [B

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [B

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [B

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [B

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [B

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [B

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [B

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [B

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [B

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [B

    fill-array-data v2, :array_6d

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v3, [B

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v3, [B

    fill-array-data v2, :array_6f

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v3, [B

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v3, [B

    fill-array-data v2, :array_71

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v3, [B

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v3, [B

    fill-array-data v2, :array_73

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v3, [B

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v3, [B

    fill-array-data v2, :array_75

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v3, [B

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v3, [B

    fill-array-data v2, :array_77

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v3, [B

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v3, [B

    fill-array-data v2, :array_79

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v3, [B

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v3, [B

    fill-array-data v2, :array_7b

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v3, [B

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v3, [B

    fill-array-data v2, :array_7d

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v3, [B

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v3, [B

    fill-array-data v2, :array_7f

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v3, [B

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v3, [B

    fill-array-data v2, :array_81

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v3, [B

    fill-array-data v2, :array_82

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v3, [B

    fill-array-data v2, :array_83

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v3, [B

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v3, [B

    fill-array-data v2, :array_85

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v3, [B

    fill-array-data v2, :array_86

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v3, [B

    fill-array-data v2, :array_87

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v3, [B

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v3, [B

    fill-array-data v2, :array_89

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v3, [B

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v3, [B

    fill-array-data v2, :array_8b

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v3, [B

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v3, [B

    fill-array-data v2, :array_8d

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v3, [B

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v3, [B

    fill-array-data v2, :array_8f

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v3, [B

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v3, [B

    fill-array-data v2, :array_91

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v3, [B

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v3, [B

    fill-array-data v2, :array_93

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v3, [B

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v3, [B

    fill-array-data v2, :array_95

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v3, [B

    fill-array-data v2, :array_96

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v3, [B

    fill-array-data v2, :array_97

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v3, [B

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v3, [B

    fill-array-data v2, :array_99

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v3, [B

    fill-array-data v2, :array_9a

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v3, [B

    fill-array-data v2, :array_9b

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v3, [B

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v3, [B

    fill-array-data v2, :array_9d

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v3, [B

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v3, [B

    fill-array-data v2, :array_9f

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v3, [B

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v3, [B

    fill-array-data v2, :array_a1

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v3, [B

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v3, [B

    fill-array-data v2, :array_a3

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v3, [B

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v3, [B

    fill-array-data v2, :array_a5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v3, [B

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v3, [B

    fill-array-data v2, :array_a7

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v3, [B

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v3, [B

    fill-array-data v2, :array_a9

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v3, [B

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v3, [B

    fill-array-data v2, :array_ab

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v3, [B

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v3, [B

    fill-array-data v2, :array_ad

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v3, [B

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v3, [B

    fill-array-data v2, :array_af

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v3, [B

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v3, [B

    fill-array-data v2, :array_b1

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v3, [B

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v3, [B

    fill-array-data v2, :array_b3

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v3, [B

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v3, [B

    fill-array-data v2, :array_b5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v3, [B

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v3, [B

    fill-array-data v2, :array_b7

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v3, [B

    fill-array-data v2, :array_b8

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v3, [B

    fill-array-data v2, :array_b9

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v3, [B

    fill-array-data v2, :array_ba

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v3, [B

    fill-array-data v2, :array_bb

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v3, [B

    fill-array-data v2, :array_bc

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v3, [B

    fill-array-data v2, :array_bd

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v3, [B

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v3, [B

    fill-array-data v2, :array_bf

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v3, [B

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v3, [B

    fill-array-data v2, :array_c1

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v3, [B

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v3, [B

    fill-array-data v2, :array_c3

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v3, [B

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v3, [B

    fill-array-data v2, :array_c5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v3, [B

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v3, [B

    fill-array-data v2, :array_c7

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v3, [B

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v3, [B

    fill-array-data v2, :array_c9

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v3, [B

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v3, [B

    fill-array-data v2, :array_cb

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v3, [B

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v3, [B

    fill-array-data v2, :array_cd

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v3, [B

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v3, [B

    fill-array-data v2, :array_cf

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v3, [B

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v3, [B

    fill-array-data v2, :array_d1

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v3, [B

    fill-array-data v2, :array_d2

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v3, [B

    fill-array-data v2, :array_d3

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v3, [B

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v3, [B

    fill-array-data v2, :array_d5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v3, [B

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v3, [B

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v3, [B

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v3, [B

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v3, [B

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v3, [B

    fill-array-data v2, :array_db

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v3, [B

    fill-array-data v2, :array_dc

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v3, [B

    fill-array-data v2, :array_dd

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v3, [B

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v3, [B

    fill-array-data v2, :array_df

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v3, [B

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v3, [B

    fill-array-data v2, :array_e1

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v3, [B

    fill-array-data v2, :array_e2

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v3, [B

    fill-array-data v2, :array_e3

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v3, [B

    fill-array-data v2, :array_e4

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v3, [B

    fill-array-data v2, :array_e5

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v3, [B

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v3, [B

    fill-array-data v2, :array_e7

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v3, [B

    fill-array-data v2, :array_e8

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v3, [B

    fill-array-data v2, :array_e9

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v3, [B

    fill-array-data v2, :array_ea

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v3, [B

    fill-array-data v2, :array_eb

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v3, [B

    fill-array-data v2, :array_ec

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v3, [B

    fill-array-data v2, :array_ed

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v3, [B

    fill-array-data v2, :array_ee

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v3, [B

    fill-array-data v2, :array_ef

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v3, [B

    fill-array-data v2, :array_f0

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v3, [B

    fill-array-data v2, :array_f1

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v3, [B

    fill-array-data v2, :array_f2

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v3, [B

    fill-array-data v2, :array_f3

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v3, [B

    fill-array-data v2, :array_f4

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v3, [B

    fill-array-data v2, :array_f5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v3, [B

    fill-array-data v2, :array_f6

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v3, [B

    fill-array-data v2, :array_f7

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v3, [B

    fill-array-data v2, :array_f8

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v3, [B

    fill-array-data v2, :array_f9

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v3, [B

    fill-array-data v2, :array_fa

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v3, [B

    fill-array-data v2, :array_fb

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v3, [B

    fill-array-data v2, :array_fc

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v3, [B

    fill-array-data v2, :array_fd

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v3, [B

    fill-array-data v2, :array_fe

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v3, [B

    fill-array-data v2, :array_ff

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v3, [B

    fill-array-data v2, :array_100

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v3, [B

    fill-array-data v2, :array_101

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v3, [B

    fill-array-data v2, :array_102

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v3, [B

    fill-array-data v2, :array_103

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v3, [B

    fill-array-data v2, :array_104

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v3, [B

    fill-array-data v2, :array_105

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v3, [B

    fill-array-data v2, :array_106

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v3, [B

    fill-array-data v2, :array_107

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v3, [B

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v3, [B

    fill-array-data v2, :array_109

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v3, [B

    fill-array-data v2, :array_10a

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v3, [B

    fill-array-data v2, :array_10b

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v3, [B

    fill-array-data v2, :array_10c

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v3, [B

    fill-array-data v2, :array_10d

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v3, [B

    fill-array-data v2, :array_10e

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v3, [B

    fill-array-data v2, :array_10f

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v3, [B

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v3, [B

    fill-array-data v2, :array_111

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v3, [B

    fill-array-data v2, :array_112

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v3, [B

    fill-array-data v2, :array_113

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v3, [B

    fill-array-data v2, :array_114

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v3, [B

    fill-array-data v2, :array_115

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v3, [B

    fill-array-data v2, :array_116

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v3, [B

    fill-array-data v2, :array_117

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v3, [B

    fill-array-data v2, :array_118

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v3, [B

    fill-array-data v2, :array_119

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v3, [B

    fill-array-data v2, :array_11a

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v3, [B

    fill-array-data v2, :array_11b

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v3, [B

    fill-array-data v2, :array_11c

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v3, [B

    fill-array-data v2, :array_11d

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v3, [B

    fill-array-data v2, :array_11e

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v3, [B

    fill-array-data v2, :array_11f

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v3, [B

    fill-array-data v2, :array_120

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v3, [B

    fill-array-data v2, :array_121

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v3, [B

    fill-array-data v2, :array_122

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v3, [B

    fill-array-data v2, :array_123

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v3, [B

    fill-array-data v2, :array_124

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v3, [B

    fill-array-data v2, :array_125

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v3, [B

    fill-array-data v2, :array_126

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v3, [B

    fill-array-data v2, :array_127

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v3, [B

    fill-array-data v2, :array_128

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v3, [B

    fill-array-data v2, :array_129

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v3, [B

    fill-array-data v2, :array_12a

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v3, [B

    fill-array-data v2, :array_12b

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v3, [B

    fill-array-data v2, :array_12c

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v3, [B

    fill-array-data v2, :array_12d

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v3, [B

    fill-array-data v2, :array_12e

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v3, [B

    fill-array-data v2, :array_12f

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v3, [B

    fill-array-data v2, :array_130

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v3, [B

    fill-array-data v2, :array_131

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v3, [B

    fill-array-data v2, :array_132

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v3, [B

    fill-array-data v2, :array_133

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v3, [B

    fill-array-data v2, :array_134

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v3, [B

    fill-array-data v2, :array_135

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v3, [B

    fill-array-data v2, :array_136

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v3, [B

    fill-array-data v2, :array_137

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v3, [B

    fill-array-data v2, :array_138

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v3, [B

    fill-array-data v2, :array_139

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v3, [B

    fill-array-data v2, :array_13a

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v3, [B

    fill-array-data v2, :array_13b

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v3, [B

    fill-array-data v2, :array_13c

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v3, [B

    fill-array-data v2, :array_13d

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v3, [B

    fill-array-data v2, :array_13e

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v3, [B

    fill-array-data v2, :array_13f

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v3, [B

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v3, [B

    fill-array-data v2, :array_141

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v3, [B

    fill-array-data v2, :array_142

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v3, [B

    fill-array-data v2, :array_143

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v3, [B

    fill-array-data v2, :array_144

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v3, [B

    fill-array-data v2, :array_145

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v3, [B

    fill-array-data v2, :array_146

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v3, [B

    fill-array-data v2, :array_147

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v3, [B

    fill-array-data v2, :array_148

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v3, [B

    fill-array-data v2, :array_149

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v3, [B

    fill-array-data v2, :array_14a

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v3, [B

    fill-array-data v2, :array_14b

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v3, [B

    fill-array-data v2, :array_14c

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v3, [B

    fill-array-data v2, :array_14d

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v3, [B

    fill-array-data v2, :array_14e

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v3, [B

    fill-array-data v2, :array_14f

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v3, [B

    fill-array-data v2, :array_150

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v3, [B

    fill-array-data v2, :array_151

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v3, [B

    fill-array-data v2, :array_152

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v3, [B

    fill-array-data v2, :array_153

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v3, [B

    fill-array-data v2, :array_154

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v3, [B

    fill-array-data v2, :array_155

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v3, [B

    fill-array-data v2, :array_156

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v3, [B

    fill-array-data v2, :array_157

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v3, [B

    fill-array-data v2, :array_158

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v3, [B

    fill-array-data v2, :array_159

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v3, [B

    fill-array-data v2, :array_15a

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v3, [B

    fill-array-data v2, :array_15b

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v3, [B

    fill-array-data v2, :array_15c

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v3, [B

    fill-array-data v2, :array_15d

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v3, [B

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v3, [B

    fill-array-data v2, :array_15f

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v3, [B

    fill-array-data v2, :array_160

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v3, [B

    fill-array-data v2, :array_161

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v3, [B

    fill-array-data v2, :array_162

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v3, [B

    fill-array-data v2, :array_163

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v3, [B

    fill-array-data v2, :array_164

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v3, [B

    fill-array-data v2, :array_165

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v3, [B

    fill-array-data v2, :array_166

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v3, [B

    fill-array-data v2, :array_167

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v3, [B

    fill-array-data v2, :array_168

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v3, [B

    fill-array-data v2, :array_169

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v3, [B

    fill-array-data v2, :array_16a

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v3, [B

    fill-array-data v2, :array_16b

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v3, [B

    fill-array-data v2, :array_16c

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v3, [B

    fill-array-data v2, :array_16d

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v3, [B

    fill-array-data v2, :array_16e

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v3, [B

    fill-array-data v2, :array_16f

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v3, [B

    fill-array-data v2, :array_170

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v3, [B

    fill-array-data v2, :array_171

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v3, [B

    fill-array-data v2, :array_172

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v3, [B

    fill-array-data v2, :array_173

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v3, [B

    fill-array-data v2, :array_174

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v3, [B

    fill-array-data v2, :array_175

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v3, [B

    fill-array-data v2, :array_176

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v3, [B

    fill-array-data v2, :array_177

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v3, [B

    fill-array-data v2, :array_178

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v3, [B

    fill-array-data v2, :array_179

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v3, [B

    fill-array-data v2, :array_17a

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v3, [B

    fill-array-data v2, :array_17b

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v3, [B

    fill-array-data v2, :array_17c

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v3, [B

    fill-array-data v2, :array_17d

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v3, [B

    fill-array-data v2, :array_17e

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v3, [B

    fill-array-data v2, :array_17f

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v3, [B

    fill-array-data v2, :array_180

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v3, [B

    fill-array-data v2, :array_181

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v3, [B

    fill-array-data v2, :array_182

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v3, [B

    fill-array-data v2, :array_183

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v3, [B

    fill-array-data v2, :array_184

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v3, [B

    fill-array-data v2, :array_185

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v3, [B

    fill-array-data v2, :array_186

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v3, [B

    fill-array-data v2, :array_187

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v3, [B

    fill-array-data v2, :array_188

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v3, [B

    fill-array-data v2, :array_189

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v3, [B

    fill-array-data v2, :array_18a

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v3, [B

    fill-array-data v2, :array_18b

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v3, [B

    fill-array-data v2, :array_18c

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v3, [B

    fill-array-data v2, :array_18d

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v3, [B

    fill-array-data v2, :array_18e

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v3, [B

    fill-array-data v2, :array_18f

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v3, [B

    fill-array-data v2, :array_190

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v3, [B

    fill-array-data v2, :array_191

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v3, [B

    fill-array-data v2, :array_192

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v3, [B

    fill-array-data v2, :array_193

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v3, [B

    fill-array-data v2, :array_194

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v3, [B

    fill-array-data v2, :array_195

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v3, [B

    fill-array-data v2, :array_196

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/HanziToPinyin;->PINYINS:[[B

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 308
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lmiui/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    .line 356
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x963f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "A"

    aput-object v3, v2, v4

    const-string v3, "E"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x814c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YAN"

    aput-object v3, v2, v4

    const-string v3, "A"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AO"

    aput-object v3, v2, v4

    const-string v3, "O"

    aput-object v3, v2, v5

    const-string v3, "NIU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6252

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PA"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x868c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BANG"

    aput-object v3, v2, v4

    const-string v3, "BENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "BO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5821

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "BU"

    aput-object v3, v2, v5

    const-string v3, "PU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66b4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "PU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BEN"

    aput-object v3, v2, v4

    const-string v3, "FEI"

    aput-object v3, v2, v5

    const-string v3, "BI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FEI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x81c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BI"

    aput-object v3, v2, v4

    const-string v3, "BEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FU"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6241

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIAN"

    aput-object v3, v2, v4

    const-string v3, "PIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fbf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIAN"

    aput-object v3, v2, v4

    const-string v3, "PIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8180

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANG"

    aput-object v3, v2, v4

    const-string v3, "BANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x78c5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANG"

    aput-object v3, v2, v4

    const-string v3, "BANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9aa0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BIAO"

    aput-object v3, v2, v4

    const-string v3, "PIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x756a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "FAN"

    aput-object v3, v2, v4

    const-string v3, "PAN"

    aput-object v3, v2, v5

    const-string v3, "BO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BEI"

    aput-object v3, v2, v4

    const-string v3, "BO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5e9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FEI"

    aput-object v3, v2, v4

    const-string v3, "BO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5265

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    const-string v3, "XUE"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "PO"

    aput-object v3, v2, v5

    const-string v3, "BAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "BAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "BU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CANG"

    aput-object v3, v2, v4

    const-string v3, "CHEN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x85cf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CANG"

    aput-object v3, v2, v4

    const-string v3, "ZANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CAN"

    aput-object v3, v2, v4

    const-string v3, "SHEN"

    aput-object v3, v2, v5

    const-string v3, "CEN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CENG"

    aput-object v3, v2, v4

    const-string v3, "ZENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x564c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CENG"

    aput-object v3, v2, v4

    const-string v3, "CHENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5dee

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHA"

    aput-object v3, v2, v4

    const-string v3, "CHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHA"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7985

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "SHAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x98a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "ZHAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "CAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x88f3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHANG"

    aput-object v3, v2, v4

    const-string v3, "CHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x573a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHANG"

    aput-object v3, v2, v4

    const-string v3, "CHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6668

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CHEN"

    aput-object v3, v2, v4

    const-string v3, "CHANG"

    aput-object v3, v2, v5

    const-string v3, "ZE"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x957f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHANG"

    aput-object v3, v2, v4

    const-string v3, "ZHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5382

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CHANG"

    aput-object v3, v2, v4

    const-string v3, "AN"

    aput-object v3, v2, v5

    const-string v3, "HAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5632

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CHAO"

    aput-object v3, v2, v4

    const-string v3, "ZHAO"

    aput-object v3, v2, v5

    const-string v3, "ZHA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHE"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79f0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHENG"

    aput-object v3, v2, v4

    const-string v3, "CHEN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6f84

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHENG"

    aput-object v3, v2, v4

    const-string v3, "DENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x94db

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DANG"

    aput-object v3, v2, v4

    const-string v3, "CHENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e58

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHENG"

    aput-object v3, v2, v4

    const-string v3, "SHENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x671d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAO"

    aput-object v3, v2, v4

    const-string v3, "ZHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9561

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "XIN"

    aput-object v3, v2, v4

    const-string v3, "CHAN"

    aput-object v3, v2, v5

    const-string v3, "TAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5319

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cbb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e11

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "NIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x81ed

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "XIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x91cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHONG"

    aput-object v3, v2, v4

    const-string v3, "CHONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHONG"

    aput-object v3, v2, v4

    const-string v3, "CHONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x755c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHU"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9664

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHU"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUAN"

    aput-object v3, v2, v4

    const-string v3, "ZHUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x555c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUO"

    aput-object v3, v2, v4

    const-string v3, "CHUAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ef0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHUO"

    aput-object v3, v2, v4

    const-string v3, "CHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ZHU"

    aput-object v3, v2, v4

    const-string v3, "CHU"

    aput-object v3, v2, v5

    const-string v3, "ZHE"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x690e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHUI"

    aput-object v3, v2, v4

    const-string v3, "CHUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6b21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CI"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    const-string v3, "QI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CI"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5179

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "CI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x679e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CONG"

    aput-object v3, v2, v4

    const-string v3, "ZONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6512

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CUAN"

    aput-object v3, v2, v4

    const-string v3, "ZAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5352

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZU"

    aput-object v3, v2, v4

    const-string v3, "CU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8870

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHUAI"

    aput-object v3, v2, v4

    const-string v3, "CUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x64ae

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CUO"

    aput-object v3, v2, v4

    const-string v3, "ZUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5927

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DA"

    aput-object v3, v2, v4

    const-string v3, "DAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c93

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TA"

    aput-object v3, v2, v4

    const-string v3, "DA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5355

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DAN"

    aput-object v3, v2, v4

    const-string v3, "CHAN"

    aput-object v3, v2, v5

    const-string v3, "SHAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53e8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DAO"

    aput-object v3, v2, v4

    const-string v3, "TAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x63d0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TI"

    aput-object v3, v2, v4

    const-string v3, "DI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DI"

    aput-object v3, v2, v4

    const-string v3, "TI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DI"

    aput-object v3, v2, v4

    const-string v3, "ZHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5f97

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DE"

    aput-object v3, v2, v4

    const-string v3, "DEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x94bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAN"

    aput-object v3, v2, v4

    const-string v3, "TIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAN"

    aput-object v3, v2, v4

    const-string v3, "TIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5200

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DAO"

    aput-object v3, v2, v4

    const-string v3, "DIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAO"

    aput-object v3, v2, v4

    const-string v3, "TIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90fd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DOU"

    aput-object v3, v2, v4

    const-string v3, "DU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5ea6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DU"

    aput-object v3, v2, v4

    const-string v3, "DUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x56e4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TUN"

    aput-object v3, v2, v4

    const-string v3, "DUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5426

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FOU"

    aput-object v3, v2, v4

    const-string v3, "PI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x812f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PU"

    aput-object v3, v2, v4

    const-string v3, "FU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "YA"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    const-string v3, "GA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x625b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KANG"

    aput-object v3, v2, v4

    const-string v3, "GANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x76d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GAI"

    aput-object v3, v2, v4

    const-string v3, "GE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x54af

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GE"

    aput-object v3, v2, v4

    const-string v3, "KA"

    aput-object v3, v2, v5

    const-string v3, "LO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9769

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5408

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HE"

    aput-object v3, v2, v4

    const-string v3, "GE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ed9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GEI"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9888

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JING"

    aput-object v3, v2, v4

    const-string v3, "GENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ea2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HONG"

    aput-object v3, v2, v4

    const-string v3, "GONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67b8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GOU"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5471

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUA"

    aput-object v3, v2, v4

    const-string v3, "GU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GU"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x866b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHONG"

    aput-object v3, v2, v4

    const-string v3, "GU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9e44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HU"

    aput-object v3, v2, v4

    const-string v3, "GU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KUO"

    aput-object v3, v2, v4

    const-string v3, "GUA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x839e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUAN"

    aput-object v3, v2, v4

    const-string v3, "WAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7eb6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUN"

    aput-object v3, v2, v4

    const-string v3, "GUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7085

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIONG"

    aput-object v3, v2, v4

    const-string v3, "GUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6867

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "HUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7094

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUE"

    aput-object v3, v2, v4

    const-string v3, "GUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x660b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "JIONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f1a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "HUI"

    aput-object v3, v2, v4

    const-string v3, "KUAI"

    aput-object v3, v2, v5

    const-string v3, "GUI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x82a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "GAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x867e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIA"

    aput-object v3, v2, v4

    const-string v3, "HA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f69

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUAN"

    aput-object v3, v2, v4

    const-string v3, "HAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6496

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KAN"

    aput-object v3, v2, v4

    const-string v3, "HAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x54b3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "HAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5df7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIANG"

    aput-object v3, v2, v4

    const-string v3, "HANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x542d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KENG"

    aput-object v3, v2, v4

    const-string v3, "HANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    const-string v3, "MEI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x548c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "HE"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "HUO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c89

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HE"

    aput-object v3, v2, v4

    const-string v3, "HAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HEI"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8679

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HONG"

    aput-object v3, v2, v4

    const-string v3, "JIANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUN"

    aput-object v3, v2, v4

    const-string v3, "HUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bf0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HUAN"

    aput-object v3, v2, v4

    const-string v3, "XIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5947

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QI"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f09

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5048

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7cfb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7a3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bd8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bb0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "JIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5267

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JU"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x796d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    const-string v3, "ZHAI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8304

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIE"

    aput-object v3, v2, v4

    const-string v3, "JIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x56bc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "JUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fa5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "JUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x811a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "JUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x527f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "CHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6821

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIAO"

    aput-object v3, v2, v4

    const-string v3, "JIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAO"

    aput-object v3, v2, v4

    const-string v3, "ZHUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIAN"

    aput-object v3, v2, v4

    const-string v3, "XIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x964d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "XIANG"

    aput-object v3, v2, v4

    const-string v3, "LONG"

    aput-object v3, v2, v5

    const-string v3, "JIANG"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "XIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x85c9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIE"

    aput-object v3, v2, v4

    const-string v3, "JI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x77dc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIN"

    aput-object v3, v2, v4

    const-string v3, "QIN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x52b2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JIN"

    aput-object v3, v2, v4

    const-string v3, "JING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9f9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "QIU"

    aput-object v3, v2, v5

    const-string v3, "CI"

    aput-object v3, v2, v6

    const-string v3, "JUN"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5480

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JU"

    aput-object v3, v2, v4

    const-string v3, "ZUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x741a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JU"

    aput-object v3, v2, v4

    const-string v3, "QU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x83cc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JUN"

    aput-object v3, v2, v4

    const-string v3, "XUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JUN"

    aput-object v3, v2, v4

    const-string v3, "JUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5361

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KA"

    aput-object v3, v2, v4

    const-string v3, "QIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x770b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KAN"

    aput-object v3, v2, v4

    const-string v3, "KAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HAN"

    aput-object v3, v2, v4

    const-string v3, "KAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5777

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x58f3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "QIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x514b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "KEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9760

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KAO"

    aput-object v3, v2, v4

    const-string v3, "KU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9697

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "KUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9b3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "WEI"

    aput-object v3, v2, v5

    const-string v3, "KUI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8312

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "KUANG"

    aput-object v3, v2, v4

    const-string v3, "GUAN"

    aput-object v3, v2, v5

    const-string v3, "YUAN"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LA"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84dd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LAN"

    aput-object v3, v2, v4

    const-string v3, "PIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x70d9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "LAO"

    aput-object v3, v2, v4

    const-string v3, "LUO"

    aput-object v3, v2, v5

    const-string v3, "PAO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x808b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LE"

    aput-object v3, v2, v4

    const-string v3, "LEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LE"

    aput-object v3, v2, v4

    const-string v3, "YUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e86

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LE"

    aput-object v3, v2, v4

    const-string v3, "LIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fe9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIANG"

    aput-object v3, v2, v4

    const-string v3, "LIA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIAO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x788c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "ZHOU"

    aput-object v3, v2, v5

    const-string v3, "LIU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x507b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LOU"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9732

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "LOU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x634b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "LUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7eff

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LV"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x516d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LIU"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7edc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x843d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "LUO"

    aput-object v3, v2, v4

    const-string v3, "LAO"

    aput-object v3, v2, v5

    const-string v3, "LA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62b9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MA"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8109

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAI"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x57cb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAI"

    aput-object v3, v2, v4

    const-string v3, "MAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8513

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MAN"

    aput-object v3, v2, v4

    const-string v3, "WAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c13

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MANG"

    aput-object v3, v2, v4

    const-string v3, "MENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6ca1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MEI"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79d8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6ccc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MI"

    aput-object v3, v2, v4

    const-string v3, "BI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MI"

    aput-object v3, v2, v4

    const-string v3, "NAI"

    aput-object v3, v2, v5

    const-string v3, "NI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MIAO"

    aput-object v3, v2, v4

    const-string v3, "MIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6a21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "MU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6469

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "SA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6bcd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MU"

    aput-object v3, v2, v4

    const-string v3, "WU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MIU"

    aput-object v3, v2, v4

    const-string v3, "MIAO"

    aput-object v3, v2, v5

    const-string v3, "MOU"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5f04

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NONG"

    aput-object v3, v2, v4

    const-string v3, "LONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NAN"

    aput-object v3, v2, v4

    const-string v3, "NING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x759f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NUE"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MIE"

    aput-object v3, v2, v4

    const-string v3, "NIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5a1c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NA"

    aput-object v3, v2, v4

    const-string v3, "NUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x533a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QU"

    aput-object v3, v2, v4

    const-string v3, "OU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7e41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FAN"

    aput-object v3, v2, v4

    const-string v3, "PO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8feb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PO"

    aput-object v3, v2, v4

    const-string v3, "PAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x80d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANG"

    aput-object v3, v2, v4

    const-string v3, "PAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5228

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PAO"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x70ae

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PAO"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FENG"

    aput-object v3, v2, v4

    const-string v3, "PANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PENG"

    aput-object v3, v2, v4

    const-string v3, "PANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6734

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PU"

    aput-object v3, v2, v4

    const-string v3, "PO"

    aput-object v3, v2, v5

    const-string v3, "PIAO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7011

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PU"

    aput-object v3, v2, v4

    const-string v3, "BAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66dd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BAO"

    aput-object v3, v2, v4

    const-string v3, "PU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6816

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8e4a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7a3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JI"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8368

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUN"

    aput-object v3, v2, v4

    const-string v3, "QIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIAN"

    aput-object v3, v2, v4

    const-string v3, "XUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5f3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIANG"

    aput-object v3, v2, v4

    const-string v3, "JIANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d84

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIE"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4eb2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QIN"

    aput-object v3, v2, v4

    const-string v3, "QING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96c0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUE"

    aput-object v3, v2, v4

    const-string v3, "QIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHOU"

    aput-object v3, v2, v4

    const-string v3, "QIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5708

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QUAN"

    aput-object v3, v2, v4

    const-string v3, "JUAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8272

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SE"

    aput-object v3, v2, v4

    const-string v3, "SHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x585e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SAI"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53a6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIA"

    aput-object v3, v2, v4

    const-string v3, "SHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHAO"

    aput-object v3, v2, v4

    const-string v3, "SHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6749

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHAN"

    aput-object v3, v2, v4

    const-string v3, "SHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TANG"

    aput-object v3, v2, v4

    const-string v3, "SHANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHI"

    aput-object v3, v2, v4

    const-string v3, "SHE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6298

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHE"

    aput-object v3, v2, v4

    const-string v3, "SHE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHEN"

    aput-object v3, v2, v4

    const-string v3, "SHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x845a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHEN"

    aput-object v3, v2, v4

    const-string v3, "REN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bc6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHI"

    aput-object v3, v2, v4

    const-string v3, "ZHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SI"

    aput-object v3, v2, v4

    const-string v3, "SHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5c5e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHU"

    aput-object v3, v2, v4

    const-string v3, "ZHU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x719f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHU"

    aput-object v3, v2, v4

    const-string v3, "SHOU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bf4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHUO"

    aput-object v3, v2, v4

    const-string v3, "SHUI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6570

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHU"

    aput-object v3, v2, v4

    const-string v3, "SHUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5fea

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SONG"

    aput-object v3, v2, v4

    const-string v3, "ZHONG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bbf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SU"

    aput-object v3, v2, v4

    const-string v3, "XIU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x772d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GUI"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    const-string v3, "SUI"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6fb9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DAN"

    aput-object v3, v2, v4

    const-string v3, "TAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c93

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TA"

    aput-object v3, v2, v4

    const-string v3, "DA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8983

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TAN"

    aput-object v3, v2, v4

    const-string v3, "QIN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DIAO"

    aput-object v3, v2, v4

    const-string v3, "TIAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x892a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TUI"

    aput-object v3, v2, v4

    const-string v3, "TUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62d3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TUO"

    aput-object v3, v2, v4

    const-string v3, "TA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5729

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x59d4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "QU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5c3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "YI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5c09

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WEI"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9057

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YI"

    aput-object v3, v2, v4

    const-string v3, "WEI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "WU"

    aput-object v3, v2, v4

    const-string v3, "LA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5413

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIA"

    aput-object v3, v2, v4

    const-string v3, "HE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ea4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIAN"

    aput-object v3, v2, v4

    const-string v3, "QIAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x884c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "XING"

    aput-object v3, v2, v4

    const-string v3, "HANG"

    aput-object v3, v2, v5

    const-string v3, "HENG"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7701

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SHENG"

    aput-object v3, v2, v4

    const-string v3, "XING"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x524a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XIAO"

    aput-object v3, v2, v4

    const-string v3, "XUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8840

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "XUE"

    aput-object v3, v2, v4

    const-string v3, "XIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6bb7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YIN"

    aput-object v3, v2, v4

    const-string v3, "YAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x54bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YAN"

    aput-object v3, v2, v4

    const-string v3, "YE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7ea6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUE"

    aput-object v3, v2, v4

    const-string v3, "YAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x94a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YAO"

    aput-object v3, v2, v4

    const-string v3, "YUE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53f6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YE"

    aput-object v3, v2, v4

    const-string v3, "XIE"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x827e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AI"

    aput-object v3, v2, v4

    const-string v3, "YI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x71a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUN"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5401

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "XU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUAN"

    aput-object v3, v2, v4

    const-string v3, "YUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YUAN"

    aput-object v3, v2, v4

    const-string v3, "YUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x548b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ZA"

    aput-object v3, v2, v4

    const-string v3, "ZE"

    aput-object v3, v2, v5

    const-string v3, "ZHA"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x62e9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZE"

    aput-object v3, v2, v4

    const-string v3, "ZHAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x624e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHA"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YA"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7c98

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NIAN"

    aput-object v3, v2, v4

    const-string v3, "ZHAN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x722a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHUA"

    aput-object v3, v2, v4

    const-string v3, "ZHAO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7740

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHAO"

    aput-object v3, v2, v4

    const-string v3, "ZHUO"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6b96

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHI"

    aput-object v3, v2, v4

    const-string v3, "SHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8457

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ZHU"

    aput-object v3, v2, v4

    const-string v3, "ZHE"

    aput-object v3, v2, v5

    const-string v3, "ZHUO"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5e62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHUANG"

    aput-object v3, v2, v4

    const-string v3, "CHUANG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7efc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZONG"

    aput-object v3, v2, v4

    const-string v3, "ZENG"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67de

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZUO"

    aput-object v3, v2, v4

    const-string v3, "ZHA"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ed4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "ZAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5185

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "NEI"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x77bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "QU"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6765

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "LAI"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "CHA"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5979

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "TA"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x513f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "ER"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5355\u4e8e"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u957f\u5b59"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHANG"

    aput-object v3, v2, v4

    const-string v3, "SUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5b50\u8f66"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u4e07\u4fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u6fb9\u53f0"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TAN"

    aput-object v3, v2, v4

    const-string v3, "TAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string/jumbo v1, "\u5c09\u8fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "FEI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5e9f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x756a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x91cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHONG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5382

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHONG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9561

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x671d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cbb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x555c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8870

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6668

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e11

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x957f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6b21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5200

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x76d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7085

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x866b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7094

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x660b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f1a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x82a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8312

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5df7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f69

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6496

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9ed8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x964d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bb0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x741a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5267

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9697

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9b3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9760

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x516d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LUO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e86

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "NIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "NING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x533a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6734

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7e41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fbf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5361

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8983

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "TAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6298

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x772d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7cfb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5df7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9664

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bf0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x796d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_197

    sput-object v0, Lmiui/util/HanziToPinyin;->sT9Map:[C

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x2
        0x16t 0x54t
        0xcet 0x54t
        0x89t 0x5bt
        0xaet 0x80t
        0xf9t 0x51t
        0x6bt 0x51t
        0xb0t 0x63t
        0x73t 0x62t
        0xa6t 0x90t
        0xf9t 0x52t
        0x42t 0x96t
        0x54t 0x59t
        0x3bt 0x4ft
        0x80t 0x76t
        0x2dt 0x78t
        0x6ct 0x70t
        0x8bt 0x61t
        0x43t 0x6ct
        0xabt 0x51t
        0x76t 0x76t
        0xect 0x5ct
        0x93t 0x56t
        0x72t 0x50t
        0xc2t 0x53t
        0xd3t 0x4et
        0xa1t 0x64t
        0x8at 0x51t
        0x7et 0x5dt
        0x4ct 0x56t
        0x60t 0x62t
        0xc6t 0x62t
        0xbft 0x8ft
        0x25t 0x4ft
        0x84t 0x62t
        0x66t 0x8ft
        0xbbt 0x62t
        0x37t 0x96t
        0x3t 0x54t
        0x45t 0x51t
        0xbdt 0x62t
        0xfat 0x51t
        0xbt 0x64t
        0xdbt 0x5dt
        0x5t 0x52t
        0x39t 0x54t
        0xfet 0x65t
        0x14t 0x8et
        0x72t 0x54t
        0xcet 0x4et
        0xd1t 0x51t
        0x97t 0x7ct
        0x46t 0x6ct
        0x14t 0x5dt
        0xa8t 0x90t
        0x13t 0x64t
        0x91t 0x54t
        0x46t 0x54t
        0x39t 0x4et
        0x53t 0x5ft
        0x0t 0x52t
        0x74t 0x60t
        0x65t 0x62t
        0x6ft 0x70t
        0xfet 0x4et
        0xf2t 0x55t
        0x41t 0x65t
        0x1t 0x52t
        0x39t 0x72t
        0x1t 0x4et
        0x1ft 0x4et
        0x1ct 0x4et
        0x3at 0x54t
        0x62t 0x52t
        0x11t 0x80t
        0x96t 0x57t
        0x28t 0x54t
        0x1at 0x59t
        0xb8t 0x59t
        0x40t 0x59t
        0xa5t 0x97t
        0xct 0x80t
        0xd1t 0x53t
        0x6t 0x5et
        0x1at 0x53t
        0xdet 0x98t
        0x6t 0x52t
        0x30t 0x4et
        0x85t 0x89t
        0xcft 0x4et
        0xbat 0x57t
        0x11t 0x7dt
        0x2bt 0x59t
        0x24t 0x73t
        0xeet 0x65t
        0x85t 0x4ft
        0x72t 0x5et
        0x88t 0x51t
        0x8bt 0x76t
        0x8t 0x62t
        0xd9t 0x7et
        0x39t 0x68t
        0xeft 0x63t
        0xbct 0x55t
        0xf0t 0x55t
        0xe5t 0x5dt
        0xfet 0x52t
        0x30t 0x4ft
        0x39t 0x9et
        0x56t 0x4et
        0x73t 0x51t
        0x49t 0x51t
        0x52t 0x5ft
        0x28t 0x4et
        0x34t 0x8bt
        0x59t 0x54t
        0x8et 0x59t
        0x8dt 0x54t
        0x44t 0x4ft
        0x2ft 0x59t
        0x20t 0x83t
        0xc3t 0x8bt
        0xd2t 0x9et
        0xebt 0x62t
        0xa8t 0x4et
        0xfft 0x53t
        0x41t 0x9ft
        0x4et 0x4et
        0xb1t 0x82t
        0x0t 0x60t
        0x22t 0x6bt
        0xdft 0x5dt
        0x70t 0x70t
        0xft 0x66t
        0x19t 0x54t
        0xct 0x4et
        0xa0t 0x52t
        0xbt 0x62t
        0x5ft 0x6ct
        0x7dt 0x82t
        0x36t 0x96t
        0xfet 0x5dt
        0x55t 0x57t
        0x82t 0x51t
        0x29t 0x4et
        0xe5t 0x51t
        0xe2t 0x59t
        0x58t 0x56t
        0x9bt 0x51t
        0x94t 0x54t
        0x0t 0x5ft
        0x8et 0x93t
        0xfct 0x5ft
        0x3bt 0x5ct
        0x3ct 0x53t
        0x8et 0x80t
        0xa5t 0x52t
        0x7at 0x7at
        0xa0t 0x62t
        0x5dt 0x62t
        0x38t 0x59t
        0xaft 0x84t
        0xbdt 0x5bt
        0x21t 0x53t
        0x8ft 0x4et
        0x64t 0x57t
        0x69t 0x62t
        0xc9t 0x62t
        0x86t 0x4ft
        0x70t 0x51t
        0x77t 0x55t
        0x5et 0x63t
        0xc2t 0x4et
        0xf7t 0x96t
        0x37t 0x81t
        0xf1t 0x68t
        0x5et 0x69t
        0xet 0x55t
        0xe9t 0x4ft
        0xfet 0x5at
        0x6ft 0x82t
        0x7dt 0x8et
        0xd3t 0x57t
        0xb8t 0x53t
        0xcet 0x62t
        0x9ct 0x6et
        0x99t 0x9ft
        0x4t 0x5at
        0x5ct 0x56t
        0x6at 0x5bt
        0xa1t 0x62t
        0x31t 0x98t
        0x88t 0x59t
        0xcbt 0x57t
        0x9ft 0x98t
        0x64t 0x72t
        0x2bt 0x73t
        0x45t 0x54t
        0xe8t 0x95t
        0x13t 0x6ct
        0xaat 0x54t
        0x80t 0x5bt
        0xb5t 0x55t
        0x5ct 0x4et
        0x11t 0x6ct
        0xdt 0x54t
        0x2ct 0x8ct
        0x78t 0x64t
        0x5ft 0x72t
        0xcdt 0x6bt
        0xcft 0x62t
        0x49t 0x81t
        0xe1t 0x56t
        0xd4t 0x56t
        0x6ct 0x5bt
        0xb7t 0x8bt
        0x1et 0x5at
        0xe9t 0x5at
        0xfdt 0x80t
        0xb0t 0x92t
        0xc8t 0x62t
        0x18t 0x5at
        0x1ft 0x9et
        0x4ft 0x63t
        0xdct 0x56t
        0x81t 0x5bt
        0x9et 0x59t
        0x9ct 0x51t
        0xbat 0x7ft
        0x74t 0x59t
        0x7bt 0x59t
        0xc1t 0x9et
        0xcdt 0x90t
        0x62t 0x56t
        0xb4t 0x8bt
        0x91t 0x59t
        0xcdt 0x62t
        0x5t 0x77t
        0x78t 0x6ct
        0x9bt 0x62t
        0x78t 0x54t
        0xb7t 0x55t
        0x9t 0x53t
        0x76t 0x4et
        0x47t 0x72t
        0x7dt 0x52t
        0x15t 0x6ct
        0xd8t 0x59t
        0x52t 0x4et
        0x8bt 0x94t
        0x56t 0x52t
        0xc6t 0x4et
        0x3t 0x4et
        0x90t 0x63t
        0x43t 0x53t
        0x5bt 0x54t
        0x84t 0x60t
        0x7t 0x52t
        0xb2t 0x4et
        0x51t 0x97t
        0x86t 0x5bt
        0xd7t 0x74t
        0x3at 0x53t
        0xd1t 0x5ct
        0x94t 0x70t
        0xbt 0x59t
        0x65t 0x54t
        0x63t 0x7at
        0x5bt 0x83t
        0xf9t 0x60t
        0xbat 0x4et
        0x54t 0x62t
        0xe5t 0x65t
        0xet 0x62t
        0xb9t 0x53t
        0x9at 0x90t
        0x27t 0x58t
        0x75t 0x68t
        0xf0t 0x95t
        0x3ct 0x63t
        0xe8t 0x4et
        0xe2t 0x6bt
        0x9t 0x4et
        0x52t 0x68t
        0xbbt 0x63t
        0x72t 0x82t
        0xeet 0x68t
        0xe7t 0x50t
        0x40t 0x67t
        0x5bt 0x7bt
        0x71t 0x5ct
        0x24t 0x4ft
        0x30t 0x5ft
        0x62t 0x59t
        0x33t 0x75t
        0x47t 0x53t
        0x38t 0x5ct
        0xcet 0x53t
        0x66t 0x4et
        0x37t 0x52t
        0x70t 0x88t
        0xe9t 0x95t
        0xcct 0x53t
        0x1t 0x8ct
        0x2et 0x54t
        0xf4t 0x8bt
        0xb6t 0x53t
        0xeat 0x5ft
        0xc1t 0x51t
        0xcft 0x82t
        0xfbt 0x72t
        0xat 0x59t
        0x59t 0x5bt
        0x6t 0x55t
        0xd6t 0x4et
        0x61t 0x5bt
        0x4dt 0x57t
        0x64t 0x6ct
        0x32t 0x59t
        0xd1t 0x5ft
        0xaft 0x81t
        0x54t 0x52t
        0x29t 0x59t
        0xebt 0x65t
        0x17t 0x60t
        0x85t 0x53t
        0xb5t 0x70t
        0x77t 0x50t
        0xf8t 0x51t
        0x4dt 0x6et
        0xa8t 0x63t
        0x1et 0x54t
        0xact 0x8bt
        0xb8t 0x52t
        0x6at 0x6bt
        0x2ft 0x5ft
        0x23t 0x5ct
        0x71t 0x53t
        0x37t 0x66t
        0xc1t 0x7ft
        0x1dt 0x63t
        0x4ct 0x4et
        0x15t 0x59t
        0x77t 0x54t
        0xd9t 0x4et
        0x61t 0x4et
        0x71t 0x70t
        0x9bt 0x4et
        0xc3t 0x5ft
        0x74t 0x51t
        0xf6t 0x51t
        0x11t 0x4ft
        0xct 0x62t
        0x5t 0x54t
        0xb6t 0x75t
        0x25t 0x70t
        0x2bt 0x4et
        0xbdt 0x54t
        0x2et 0x59t
        0x7at 0x5et
        0x3bt 0x50t
        0x0t 0x4et
        0x5at 0x4et
        0x94t 0x5et
        0x37t 0x55t
        0x63t 0x4ft
        0x18t 0x4ft
        0xa1t 0x7et
        0xe6t 0x56t
        0xf0t 0x66t
        0x80t 0x84t
        0x0t 0x5et
        0x7dt 0x70t
        0x42t 0x51t
        0x42t 0x72t
        0xaet 0x50t
        0x6bt 0x55t
        0x61t 0x9ct
        0xet 0x60t
        0xfdt 0x66t
        0x12t 0x54t
        0x5at 0x63t
        0xbet 0x6ct
        0x20t 0x5ft
        0x4bt 0x4ft
        0x7t 0x87t
        0x1et 0x8dt
        0xeet 0x9et
        0x4bt 0x4et
        0x2dt 0x4et
        0xdet 0x5dt
        0x31t 0x67t
        0x93t 0x62t
        0xfdt 0x62t
        0x13t 0x4et
        0x86t 0x59t
        0xb9t 0x96t
        0x92t 0x5bt
        0x53t 0x53t
        0xd4t 0x4et
        0x97t 0x5bt
        0xb9t 0x90t
        0xdft 0x79t
        0x97t 0x52t
        0xfat 0x55t
        0xat 0x5ct
        0x28t 0x66t
    .end array-data

    .line 92
    :array_1
    .array-data 0x1
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x42t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x42t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x42t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x42t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 0x1
        0x42t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 0x1
        0x42t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c
    .array-data 0x1
        0x42t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 0x1
        0x42t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 0x1
        0x42t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 0x1
        0x42t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 0x1
        0x42t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_11
    .array-data 0x1
        0x42t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12
    .array-data 0x1
        0x42t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 0x1
        0x42t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 0x1
        0x42t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15
    .array-data 0x1
        0x42t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16
    .array-data 0x1
        0x43t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 0x1
        0x43t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18
    .array-data 0x1
        0x43t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 0x1
        0x43t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 0x1
        0x43t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b
    .array-data 0x1
        0x43t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 0x1
        0x43t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 0x1
        0x43t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_22
    .array-data 0x1
        0x43t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 0x1
        0x43t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 0x1
        0x43t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_25
    .array-data 0x1
        0x43t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 0x1
        0x43t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27
    .array-data 0x1
        0x43t
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 0x1
        0x43t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_2c
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_2d
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f
    .array-data 0x1
        0x43t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_30
    .array-data 0x1
        0x43t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31
    .array-data 0x1
        0x43t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32
    .array-data 0x1
        0x43t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33
    .array-data 0x1
        0x43t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34
    .array-data 0x1
        0x43t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_35
    .array-data 0x1
        0x43t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36
    .array-data 0x1
        0x43t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37
    .array-data 0x1
        0x43t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38
    .array-data 0x1
        0x44t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39
    .array-data 0x1
        0x44t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a
    .array-data 0x1
        0x44t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3b
    .array-data 0x1
        0x44t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3c
    .array-data 0x1
        0x44t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3d
    .array-data 0x1
        0x44t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3e
    .array-data 0x1
        0x44t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3f
    .array-data 0x1
        0x44t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_40
    .array-data 0x1
        0x44t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_41
    .array-data 0x1
        0x44t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 0x1
        0x44t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_43
    .array-data 0x1
        0x44t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_44
    .array-data 0x1
        0x44t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_45
    .array-data 0x1
        0x44t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_46
    .array-data 0x1
        0x44t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_47
    .array-data 0x1
        0x44t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_48
    .array-data 0x1
        0x44t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_49
    .array-data 0x1
        0x44t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4a
    .array-data 0x1
        0x44t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_4b
    .array-data 0x1
        0x44t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4c
    .array-data 0x1
        0x44t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4d
    .array-data 0x1
        0x44t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4e
    .array-data 0x1
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4f
    .array-data 0x1
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_50
    .array-data 0x1
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_51
    .array-data 0x1
        0x45t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_52
    .array-data 0x1
        0x46t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_53
    .array-data 0x1
        0x46t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_54
    .array-data 0x1
        0x46t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_55
    .array-data 0x1
        0x46t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_56
    .array-data 0x1
        0x46t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_57
    .array-data 0x1
        0x46t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_58
    .array-data 0x1
        0x46t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_59
    .array-data 0x1
        0x46t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5a
    .array-data 0x1
        0x46t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5b
    .array-data 0x1
        0x46t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5c
    .array-data 0x1
        0x46t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5d
    .array-data 0x1
        0x47t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5e
    .array-data 0x1
        0x47t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5f
    .array-data 0x1
        0x47t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_60
    .array-data 0x1
        0x47t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_61
    .array-data 0x1
        0x47t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_62
    .array-data 0x1
        0x47t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_63
    .array-data 0x1
        0x47t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_64
    .array-data 0x1
        0x47t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_65
    .array-data 0x1
        0x47t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_66
    .array-data 0x1
        0x47t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_67
    .array-data 0x1
        0x4at
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_68
    .array-data 0x1
        0x47t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_69
    .array-data 0x1
        0x47t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6a
    .array-data 0x1
        0x47t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6b
    .array-data 0x1
        0x47t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6c
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6d
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6e
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_6f
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_70
    .array-data 0x1
        0x47t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_71
    .array-data 0x1
        0x47t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_72
    .array-data 0x1
        0x47t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_73
    .array-data 0x1
        0x47t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_74
    .array-data 0x1
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_75
    .array-data 0x1
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_76
    .array-data 0x1
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_77
    .array-data 0x1
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_78
    .array-data 0x1
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_79
    .array-data 0x1
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7a
    .array-data 0x1
        0x48t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7b
    .array-data 0x1
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7c
    .array-data 0x1
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7d
    .array-data 0x1
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7e
    .array-data 0x1
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7f
    .array-data 0x1
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_80
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_81
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_82
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_83
    .array-data 0x1
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_84
    .array-data 0x1
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_85
    .array-data 0x1
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_86
    .array-data 0x1
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_87
    .array-data 0x1
        0x4at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_88
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_89
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_8a
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_8b
    .array-data 0x1
        0x4at
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_8c
    .array-data 0x1
        0x4at
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8d
    .array-data 0x1
        0x4at
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8e
    .array-data 0x1
        0x4at
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8f
    .array-data 0x1
        0x4at
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_90
    .array-data 0x1
        0x4at
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_91
    .array-data 0x1
        0x4at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_92
    .array-data 0x1
        0x4at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_93
    .array-data 0x1
        0x4at
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_94
    .array-data 0x1
        0x4at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_95
    .array-data 0x1
        0x4bt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_96
    .array-data 0x1
        0x4bt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_97
    .array-data 0x1
        0x4bt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_98
    .array-data 0x1
        0x4bt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_99
    .array-data 0x1
        0x4bt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9a
    .array-data 0x1
        0x4bt
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9b
    .array-data 0x1
        0x4bt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9c
    .array-data 0x1
        0x4bt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9d
    .array-data 0x1
        0x4bt
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9e
    .array-data 0x1
        0x4bt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9f
    .array-data 0x1
        0x4bt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a0
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a1
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a2
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_a3
    .array-data 0x1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_a4
    .array-data 0x1
        0x4bt
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a5
    .array-data 0x1
        0x4bt
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a6
    .array-data 0x1
        0x4bt
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a7
    .array-data 0x1
        0x4ct
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a8
    .array-data 0x1
        0x4ct
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a9
    .array-data 0x1
        0x4ct
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_aa
    .array-data 0x1
        0x4ct
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ab
    .array-data 0x1
        0x4ct
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ac
    .array-data 0x1
        0x4ct
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ad
    .array-data 0x1
        0x4ct
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ae
    .array-data 0x1
        0x4ct
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_af
    .array-data 0x1
        0x4ct
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b0
    .array-data 0x1
        0x4ct
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b1
    .array-data 0x1
        0x4ct
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b2
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b3
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_b4
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_b5
    .array-data 0x1
        0x4ct
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_b6
    .array-data 0x1
        0x4ct
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b7
    .array-data 0x1
        0x4ct
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b8
    .array-data 0x1
        0x4ct
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b9
    .array-data 0x1
        0x4ct
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ba
    .array-data 0x1
        0x4ct
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bb
    .array-data 0x1
        0x4ct
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bc
    .array-data 0x1
        0x4ct
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bd
    .array-data 0x1
        0x4ct
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_be
    .array-data 0x1
        0x4ct
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bf
    .array-data 0x1
        0x4ct
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c0
    .array-data 0x1
        0x4dt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c1
    .array-data 0x1
        0x4dt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c2
    .array-data 0x1
        0x4dt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c3
    .array-data 0x1
        0x4dt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c4
    .array-data 0x1
        0x4dt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c5
    .array-data 0x1
        0x4dt
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c6
    .array-data 0x1
        0x4dt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c7
    .array-data 0x1
        0x4dt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c8
    .array-data 0x1
        0x4dt
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c9
    .array-data 0x1
        0x4dt
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_ca
    .array-data 0x1
        0x4dt
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_cb
    .array-data 0x1
        0x4dt
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_cc
    .array-data 0x1
        0x4dt
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_cd
    .array-data 0x1
        0x4dt
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ce
    .array-data 0x1
        0x4dt
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_cf
    .array-data 0x1
        0x4dt
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d0
    .array-data 0x1
        0x4dt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d1
    .array-data 0x1
        0x4dt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d2
    .array-data 0x1
        0x4et
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d3
    .array-data 0x1
        0x4et
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d4
    .array-data 0x1
        0x4et
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d5
    .array-data 0x1
        0x4et
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d6
    .array-data 0x1
        0x4et
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d7
    .array-data 0x1
        0x4et
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d8
    .array-data 0x1
        0x4et
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d9
    .array-data 0x1
        0x4et
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_da
    .array-data 0x1
        0x4et
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_db
    .array-data 0x1
        0x4et
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_dc
    .array-data 0x1
        0x4et
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_dd
    .array-data 0x1
        0x4et
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_de
    .array-data 0x1
        0x4et
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_df
    .array-data 0x1
        0x4et
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e0
    .array-data 0x1
        0x4et
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e1
    .array-data 0x1
        0x4et
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e2
    .array-data 0x1
        0x4et
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e3
    .array-data 0x1
        0x4et
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e4
    .array-data 0x1
        0x4et
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e5
    .array-data 0x1
        0x4et
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e6
    .array-data 0x1
        0x4et
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_e7
    .array-data 0x1
        0x4et
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e8
    .array-data 0x1
        0x4et
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e9
    .array-data 0x1
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ea
    .array-data 0x1
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_eb
    .array-data 0x1
        0x50t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ec
    .array-data 0x1
        0x50t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ed
    .array-data 0x1
        0x50t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ee
    .array-data 0x1
        0x50t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ef
    .array-data 0x1
        0x50t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f0
    .array-data 0x1
        0x50t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f1
    .array-data 0x1
        0x50t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f2
    .array-data 0x1
        0x50t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f3
    .array-data 0x1
        0x50t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f4
    .array-data 0x1
        0x50t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_f5
    .array-data 0x1
        0x50t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_f6
    .array-data 0x1
        0x50t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f7
    .array-data 0x1
        0x50t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f8
    .array-data 0x1
        0x50t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f9
    .array-data 0x1
        0x50t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fa
    .array-data 0x1
        0x50t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fb
    .array-data 0x1
        0x50t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fc
    .array-data 0x1
        0x51t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fd
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fe
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_ff
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_100
    .array-data 0x1
        0x51t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_101
    .array-data 0x1
        0x51t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_102
    .array-data 0x1
        0x51t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_103
    .array-data 0x1
        0x51t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_104
    .array-data 0x1
        0x51t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_105
    .array-data 0x1
        0x51t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_106
    .array-data 0x1
        0x51t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_107
    .array-data 0x1
        0x51t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_108
    .array-data 0x1
        0x51t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_109
    .array-data 0x1
        0x51t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10a
    .array-data 0x1
        0x52t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10b
    .array-data 0x1
        0x52t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10c
    .array-data 0x1
        0x52t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10d
    .array-data 0x1
        0x52t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10e
    .array-data 0x1
        0x52t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10f
    .array-data 0x1
        0x52t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_110
    .array-data 0x1
        0x52t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_111
    .array-data 0x1
        0x52t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_112
    .array-data 0x1
        0x52t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_113
    .array-data 0x1
        0x52t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_114
    .array-data 0x1
        0x52t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_115
    .array-data 0x1
        0x52t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_116
    .array-data 0x1
        0x52t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_117
    .array-data 0x1
        0x52t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_118
    .array-data 0x1
        0x53t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_119
    .array-data 0x1
        0x53t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11a
    .array-data 0x1
        0x53t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11b
    .array-data 0x1
        0x53t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11c
    .array-data 0x1
        0x53t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11d
    .array-data 0x1
        0x53t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11e
    .array-data 0x1
        0x53t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11f
    .array-data 0x1
        0x53t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_120
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_121
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_122
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_123
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_124
    .array-data 0x1
        0x53t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_125
    .array-data 0x1
        0x53t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_126
    .array-data 0x1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_127
    .array-data 0x1
        0x53t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_128
    .array-data 0x1
        0x53t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_129
    .array-data 0x1
        0x53t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12a
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12b
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12c
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_12d
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_12e
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_12f
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_130
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_131
    .array-data 0x1
        0x53t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_132
    .array-data 0x1
        0x53t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_133
    .array-data 0x1
        0x53t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_134
    .array-data 0x1
        0x53t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_135
    .array-data 0x1
        0x53t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_136
    .array-data 0x1
        0x53t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_137
    .array-data 0x1
        0x53t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_138
    .array-data 0x1
        0x53t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_139
    .array-data 0x1
        0x53t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13a
    .array-data 0x1
        0x54t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13b
    .array-data 0x1
        0x54t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13c
    .array-data 0x1
        0x54t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13d
    .array-data 0x1
        0x54t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13e
    .array-data 0x1
        0x54t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13f
    .array-data 0x1
        0x54t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_140
    .array-data 0x1
        0x54t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_141
    .array-data 0x1
        0x54t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_142
    .array-data 0x1
        0x54t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_143
    .array-data 0x1
        0x54t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_144
    .array-data 0x1
        0x54t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_145
    .array-data 0x1
        0x54t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_146
    .array-data 0x1
        0x54t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_147
    .array-data 0x1
        0x54t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_148
    .array-data 0x1
        0x54t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_149
    .array-data 0x1
        0x54t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_14a
    .array-data 0x1
        0x54t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14b
    .array-data 0x1
        0x54t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14c
    .array-data 0x1
        0x54t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14d
    .array-data 0x1
        0x57t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14e
    .array-data 0x1
        0x57t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14f
    .array-data 0x1
        0x57t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_150
    .array-data 0x1
        0x57t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_151
    .array-data 0x1
        0x57t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_152
    .array-data 0x1
        0x57t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_153
    .array-data 0x1
        0x57t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_154
    .array-data 0x1
        0x57t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_155
    .array-data 0x1
        0x57t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_156
    .array-data 0x1
        0x58t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_157
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_158
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_159
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_15a
    .array-data 0x1
        0x58t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_15b
    .array-data 0x1
        0x58t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15c
    .array-data 0x1
        0x58t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15d
    .array-data 0x1
        0x58t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15e
    .array-data 0x1
        0x58t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_15f
    .array-data 0x1
        0x58t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_160
    .array-data 0x1
        0x58t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_161
    .array-data 0x1
        0x58t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_162
    .array-data 0x1
        0x58t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_163
    .array-data 0x1
        0x58t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_164
    .array-data 0x1
        0x59t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_165
    .array-data 0x1
        0x59t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_166
    .array-data 0x1
        0x59t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_167
    .array-data 0x1
        0x59t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_168
    .array-data 0x1
        0x59t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_169
    .array-data 0x1
        0x59t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16a
    .array-data 0x1
        0x59t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16b
    .array-data 0x1
        0x59t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16c
    .array-data 0x1
        0x59t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16d
    .array-data 0x1
        0x59t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16e
    .array-data 0x1
        0x59t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16f
    .array-data 0x1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_170
    .array-data 0x1
        0x59t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_171
    .array-data 0x1
        0x59t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_172
    .array-data 0x1
        0x59t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_173
    .array-data 0x1
        0x5at
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_174
    .array-data 0x1
        0x5at
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_175
    .array-data 0x1
        0x5at
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_176
    .array-data 0x1
        0x5at
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_177
    .array-data 0x1
        0x5at
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_178
    .array-data 0x1
        0x5at
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_179
    .array-data 0x1
        0x5at
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17a
    .array-data 0x1
        0x5at
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17b
    .array-data 0x1
        0x5at
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17c
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17d
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17e
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_17f
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_180
    .array-data 0x1
        0x5at
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_181
    .array-data 0x1
        0x5at
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_182
    .array-data 0x1
        0x5at
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_183
    .array-data 0x1
        0x5at
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_184
    .array-data 0x1
        0x5at
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_185
    .array-data 0x1
        0x5at
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_186
    .array-data 0x1
        0x5at
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_187
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_188
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_189
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_18a
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_18b
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_18c
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18d
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_18e
    .array-data 0x1
        0x5at
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_18f
    .array-data 0x1
        0x5at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_190
    .array-data 0x1
        0x5at
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_191
    .array-data 0x1
        0x5at
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_192
    .array-data 0x1
        0x5at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_193
    .array-data 0x1
        0x5at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_194
    .array-data 0x1
        0x5at
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_195
    .array-data 0x1
        0x5at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_196
    .array-data 0x1
        0x5at
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 982
    nop

    :array_197
    .array-data 0x2
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .parameter "hasChinaCollator"

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-boolean p1, p0, Lmiui/util/HanziToPinyin;->mHasChinaCollator:Z

    .line 755
    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "sb"
    .parameter
    .parameter "tokenType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, str:Ljava/lang/String;
    new-instance v1, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lmiui/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 980
    return-void
.end method

.method public static formatCharToT9(C)C
    .locals 3
    .parameter "c"

    .prologue
    const/16 v2, 0x61

    const/16 v1, 0x41

    .line 1020
    if-lt p0, v1, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 1021
    sget-object v0, Lmiui/util/HanziToPinyin;->sT9Map:[C

    sub-int v1, p0, v1

    aget-char v0, v0, v1

    .line 1027
    :goto_0
    return v0

    .line 1022
    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 1023
    sget-object v0, Lmiui/util/HanziToPinyin;->sT9Map:[C

    sub-int v1, p0, v2

    aget-char v0, v0, v1

    goto :goto_0

    .line 1024
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    move v0, p0

    .line 1025
    goto :goto_0

    .line 1027
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatCharToT9(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x61

    const/16 v5, 0x41

    .line 993
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    const/4 v3, 0x0

    .line 1011
    :goto_0
    return-object v3

    .line 997
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 998
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 999
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1000
    .local v1, c:I
    if-lt v1, v5, :cond_2

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    .line 1001
    sget-object v3, Lmiui/util/HanziToPinyin;->sT9Map:[C

    sub-int v4, v1, v5

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1002
    :cond_2
    if-lt v1, v6, :cond_3

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_3

    .line 1003
    sget-object v3, Lmiui/util/HanziToPinyin;->sT9Map:[C

    sub-int v4, v1, v6

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1004
    :cond_3
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x39

    if-gt v1, v3, :cond_1

    .line 1005
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1011
    .end local v1           #c:I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getInstance()Lmiui/util/HanziToPinyin;
    .locals 5

    .prologue
    .line 758
    const-class v2, Lmiui/util/HanziToPinyin;

    monitor-enter v2

    .line 759
    :try_start_0
    sget-object v3, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    if-eqz v3, :cond_0

    .line 760
    sget-object v3, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    monitor-exit v2

    move-object v2, v3

    .line 772
    :goto_0
    return-object v2

    .line 763
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 764
    .local v1, locale:[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 765
    aget-object v3, v1, v0

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    new-instance v3, Lmiui/util/HanziToPinyin;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lmiui/util/HanziToPinyin;-><init>(Z)V

    sput-object v3, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    .line 767
    sget-object v3, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 764
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    :cond_2
    const-string v3, "HanziToPinyin"

    const-string v4, "There is no Chinese collator, HanziToPinyin is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v3, Lmiui/util/HanziToPinyin;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/util/HanziToPinyin;-><init>(Z)V

    sput-object v3, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    .line 772
    sget-object v3, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 773
    .end local v0           #i:I
    .end local v1           #locale:[Ljava/util/Locale;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 848
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v10

    .line 882
    :goto_0
    return-object v7

    .line 852
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v6, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_2

    .line 856
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, hyphenatedName:Ljava/lang/String;
    sget-object v7, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 858
    .local v4, polyPhones:[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 859
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_1

    .line 860
    new-instance v5, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .line 861
    .local v5, token:Lmiui/util/HanziToPinyin$Token;
    iput v8, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 863
    aget-object v7, v4, v1

    iput-object v7, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 864
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_1
    move-object v7, v6

    .line 867
    goto :goto_0

    .line 871
    .end local v0           #hyphenatedName:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #polyPhones:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 872
    .local v2, lastName:Ljava/lang/Character;
    sget-object v7, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 873
    .local v3, polyPhone:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 874
    new-instance v5, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .line 875
    .restart local v5       #token:Lmiui/util/HanziToPinyin$Token;
    iput v8, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 876
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 877
    iput-object v3, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 878
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v6

    .line 879
    goto :goto_0

    .end local v5           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_3
    move-object v7, v10

    .line 882
    goto :goto_0
.end method

.method private getToken(C)Lmiui/util/HanziToPinyin$Token;
    .locals 12
    .parameter "character"

    .prologue
    .line 777
    new-instance v8, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v8}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .line 779
    .local v8, token:Lmiui/util/HanziToPinyin$Token;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, letter:Ljava/lang/String;
    iput-object v4, v8, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 781
    const/4 v5, -0x1

    .line 783
    .local v5, offset:I
    const/16 v10, 0x100

    if-ge p1, v10, :cond_0

    .line 784
    const/4 v10, 0x1

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 785
    iput-object v4, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 843
    :goto_0
    return-object v8

    .line 787
    :cond_0
    const/16 v10, 0x3400

    if-ge p1, v10, :cond_1

    .line 788
    const/4 v10, 0x3

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 789
    iput-object v4, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_1
    sget-object v10, Lmiui/util/HanziToPinyin;->sPolyPhoneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .local v7, polyPhones:[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 792
    const/4 v10, 0x2

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 793
    iput-object v7, v8, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 794
    iget-object v10, v8, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v10, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 797
    :cond_2
    sget-object v10, Lmiui/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string/jumbo v11, "\u5416"

    invoke-virtual {v10, v4, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 798
    .local v1, cmp:I
    if-gez v1, :cond_3

    .line 799
    const/4 v10, 0x3

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 800
    iput-object v4, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 802
    :cond_3
    if-nez v1, :cond_7

    .line 803
    const/4 v10, 0x2

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 804
    const/4 v5, 0x0

    .line 818
    :cond_4
    :goto_1
    const/4 v10, 0x2

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 819
    if-gez v5, :cond_5

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, begin:I
    sget-object v10, Lmiui/util/HanziToPinyin;->UNIHANS:[C

    array-length v10, v10

    const/4 v11, 0x1

    sub-int v2, v10, v11

    .line 822
    .local v2, end:I
    :goto_2
    if-gt v0, v2, :cond_5

    .line 823
    add-int v10, v0, v2

    div-int/lit8 v5, v10, 0x2

    .line 824
    sget-object v10, Lmiui/util/HanziToPinyin;->UNIHANS:[C

    aget-char v10, v10, v5

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 825
    .local v9, unihan:Ljava/lang/String;
    sget-object v10, Lmiui/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v10, v4, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 826
    if-nez v1, :cond_9

    .line 835
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v9           #unihan:Ljava/lang/String;
    :cond_5
    if-gez v1, :cond_6

    .line 836
    add-int/lit8 v5, v5, -0x1

    .line 838
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v6, pinyin:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    sget-object v10, Lmiui/util/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v5

    array-length v10, v10

    if-ge v3, v10, :cond_b

    sget-object v10, Lmiui/util/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v3

    if-eqz v10, :cond_b

    .line 840
    sget-object v10, Lmiui/util/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v3

    int-to-char v10, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 806
    .end local v3           #j:I
    .end local v6           #pinyin:Ljava/lang/StringBuilder;
    :cond_7
    sget-object v10, Lmiui/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string/jumbo v11, "\u5497"

    invoke-virtual {v10, v4, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 807
    if-lez v1, :cond_8

    .line 808
    const/4 v10, 0x3

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 809
    iput-object v4, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto/16 :goto_0

    .line 811
    :cond_8
    if-nez v1, :cond_4

    .line 812
    const/4 v10, 0x2

    iput v10, v8, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 813
    sget-object v10, Lmiui/util/HanziToPinyin;->UNIHANS:[C

    array-length v10, v10

    const/4 v11, 0x1

    sub-int v5, v10, v11

    goto :goto_1

    .line 828
    .restart local v0       #begin:I
    .restart local v2       #end:I
    .restart local v9       #unihan:Ljava/lang/String;
    :cond_9
    if-lez v1, :cond_a

    .line 829
    add-int/lit8 v0, v5, 0x1

    goto :goto_2

    .line 831
    :cond_a
    const/4 v10, 0x1

    sub-int v2, v5, v10

    goto :goto_2

    .line 842
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v9           #unihan:Ljava/lang/String;
    .restart local v3       #j:I
    .restart local v6       #pinyin:Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 892
    invoke-virtual {p0, p1, v0, v0}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 12
    .parameter "input"
    .parameter "filterInvalidChar"
    .parameter "ignoreLastName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v9, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    iget-boolean v10, p0, Lmiui/util/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v10, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-object v9

    .line 913
    :cond_1
    const/4 v6, 0x0

    .line 914
    .local v6, startIndex:I
    if-nez p3, :cond_2

    .line 915
    invoke-direct {p0, p1}, Lmiui/util/HanziToPinyin;->getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 916
    .local v3, polyPhoneLastNameTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 917
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 918
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 922
    .end local v3           #polyPhoneLastNameTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 923
    .local v2, inputLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 929
    .local v8, tokenType:I
    move v1, v6

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_d

    .line 930
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 931
    .local v0, character:C
    const/16 v10, 0x20

    if-ne v0, v10, :cond_5

    .line 932
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 933
    invoke-direct {p0, v4, v9, v8}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 935
    :cond_3
    if-nez p2, :cond_4

    .line 936
    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, separator:Ljava/lang/String;
    new-instance v10, Lmiui/util/HanziToPinyin$Token;

    const/4 v11, 0x3

    invoke-direct {v10, v11, v5, v5}, Lmiui/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    .end local v5           #separator:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x3

    .line 929
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 940
    :cond_5
    const/16 v10, 0x100

    if-ge v0, v10, :cond_7

    .line 941
    const/4 v10, 0x1

    if-eq v8, v10, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 942
    invoke-direct {p0, v4, v9, v8}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 944
    :cond_6
    const/4 v8, 0x1

    .line 945
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 946
    :cond_7
    const/16 v10, 0x3400

    if-ge v0, v10, :cond_9

    .line 947
    const/4 v10, 0x3

    if-eq v8, v10, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 948
    invoke-direct {p0, v4, v9, v8}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 950
    :cond_8
    const/4 v8, 0x3

    .line 951
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 953
    :cond_9
    invoke-direct {p0, v0}, Lmiui/util/HanziToPinyin;->getToken(C)Lmiui/util/HanziToPinyin$Token;

    move-result-object v7

    .line 954
    .local v7, t:Lmiui/util/HanziToPinyin$Token;
    iget v10, v7, Lmiui/util/HanziToPinyin$Token;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 955
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 956
    invoke-direct {p0, v4, v9, v8}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 958
    :cond_a
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    const/4 v8, 0x2

    goto :goto_2

    .line 961
    :cond_b
    iget v10, v7, Lmiui/util/HanziToPinyin$Token;->type:I

    if-eq v8, v10, :cond_c

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 962
    invoke-direct {p0, v4, v9, v8}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 964
    :cond_c
    iget v8, v7, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 965
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 969
    .end local v0           #character:C
    .end local v7           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 970
    invoke-direct {p0, v4, v9, v8}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method
