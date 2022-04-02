.class synthetic Lcom/tappx/a/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->values()[Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tappx/a/k0$a;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->SINGLE:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/tappx/a/k0$a;->b:[I

    sget-object v3, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->LIVING_COMMON:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/tappx/a/k0$a;->b:[I

    sget-object v4, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->MARRIED:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/tappx/a/k0$a;->b:[I

    sget-object v5, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->DIVORCED:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v4, Lcom/tappx/a/k0$a;->b:[I

    sget-object v5, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->WIDOWED:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v4, Lcom/tappx/a/k0$a;->b:[I

    sget-object v5, Lcom/tappx/sdk/android/AdRequest$MaritalStatus;->UNKNOWN:Lcom/tappx/sdk/android/AdRequest$MaritalStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 2
    :catch_49
    invoke-static {}, Lcom/tappx/sdk/android/AdRequest$Gender;->values()[Lcom/tappx/sdk/android/AdRequest$Gender;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/tappx/a/k0$a;->a:[I

    :try_start_52
    sget-object v5, Lcom/tappx/sdk/android/AdRequest$Gender;->MALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lcom/tappx/a/k0$a;->a:[I

    sget-object v4, Lcom/tappx/sdk/android/AdRequest$Gender;->FEMALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v0, Lcom/tappx/a/k0$a;->a:[I

    sget-object v1, Lcom/tappx/sdk/android/AdRequest$Gender;->OTHER:Lcom/tappx/sdk/android/AdRequest$Gender;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/tappx/a/k0$a;->a:[I

    sget-object v1, Lcom/tappx/sdk/android/AdRequest$Gender;->UNKNOWN:Lcom/tappx/sdk/android/AdRequest$Gender;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method
