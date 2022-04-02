.class public final Lcom/google/android/gms/common/util/PlatformVersion;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# static fields
.field private static zza:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeastHoneycomb()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastHoneycombMR1()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastIceCreamSandwich()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastIceCreamSandwichMR1()Z
    .registers 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastJellyBean()Z
    .registers 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastJellyBeanMR1()Z
    .registers 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastJellyBeanMR2()Z
    .registers 2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastKitKat()Z
    .registers 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastKitKatWatch()Z
    .registers 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastLollipop()Z
    .registers 2

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastLollipopMR1()Z
    .registers 2

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastM()Z
    .registers 2

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastN()Z
    .registers 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastO()Z
    .registers 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastP()Z
    .registers 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastQ()Z
    .registers 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static isAtLeastR()Z
    .registers 4

    .line 19
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 21
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1a

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "REL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v3

    .line 23
    :cond_1a
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_38

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x52

    if-lt v0, v2, :cond_38

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-nez v0, :cond_3c

    return v1

    .line 29
    :cond_3c
    sget-object v0, Lcom/google/android/gms/common/util/PlatformVersion;->zza:Ljava/lang/Boolean;

    if-eqz v0, :cond_45

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_45
    :try_start_45
    const-string v0, "google"

    .line 31
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "RPP1"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "RPP2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x602711

    if-lt v0, v2, :cond_6f

    const/4 v1, 0x1

    .line 35
    :cond_6f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/PlatformVersion;->zza:Ljava/lang/Boolean;
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_75} :catch_76

    goto :goto_7c

    .line 38
    :catch_76
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/PlatformVersion;->zza:Ljava/lang/Boolean;

    .line 39
    :goto_7c
    sget-object v0, Lcom/google/android/gms/common/util/PlatformVersion;->zza:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8b

    const-string v0, "PlatformVersion"

    const-string v1, "Build version must be at least 6301457 to support R in gmscore"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_8b
    sget-object v0, Lcom/google/android/gms/common/util/PlatformVersion;->zza:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
