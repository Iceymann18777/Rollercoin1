.class public final enum Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/common/model/GetAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "VideoRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

.field public static final enum DISABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

.field public static final enum ENABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

.field public static final enum FORCED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

.field public static final enum FORCED_NONVAST:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 68
    new-instance v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->ENABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    new-instance v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    const-string v1, "DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->DISABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    new-instance v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    const-string v1, "FORCED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->FORCED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    new-instance v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    const-string v1, "FORCED_NONVAST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->FORCED_NONVAST:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    .line 67
    sget-object v6, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->ENABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->DISABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->FORCED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->$VALUES:[Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;
    .registers 2

    .line 67
    const-class v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;
    .registers 1

    .line 67
    sget-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->$VALUES:[Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    return-object v0
.end method
