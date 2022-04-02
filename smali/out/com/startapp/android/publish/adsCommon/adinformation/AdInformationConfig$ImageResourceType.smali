.class public final enum Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_EX_L:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_EX_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_L:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 34
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_S"

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    .line 35
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_EX_S"

    const/4 v3, 0x1

    const/16 v5, 0x58

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    .line 36
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_L"

    const/4 v4, 0x2

    const/16 v5, 0x19

    const/16 v6, 0x15

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_L:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    .line 37
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_EX_L"

    const/4 v5, 0x3

    const/16 v7, 0x82

    invoke-direct {v0, v1, v5, v7, v6}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_L:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    .line 33
    sget-object v6, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_L:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->$VALUES:[Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->width:I

    .line 42
    iput p4, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->height:I

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;
    .registers 6

    .line 54
    sget-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    .line 55
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->values()[Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v1

    const/4 v2, 0x0

    .line 56
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 57
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20

    .line 58
    aget-object v0, v1, v2

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;
    .registers 2

    .line 33
    const-class v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;
    .registers 1

    .line 33
    sget-object v0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->$VALUES:[Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    return-object v0
.end method


# virtual methods
.method public getDefaultHeight()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->height:I

    return v0
.end method

.method public getDefaultWidth()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;->width:I

    return v0
.end method
