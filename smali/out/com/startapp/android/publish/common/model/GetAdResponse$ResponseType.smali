.class public final enum Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/common/model/GetAdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

.field public static final enum HTML:Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

.field public static final enum JSON:Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 15
    new-instance v0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    const-string v1, "HTML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;->HTML:Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    new-instance v0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    const-string v1, "JSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;->JSON:Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    .line 14
    sget-object v4, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;->HTML:Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;->$VALUES:[Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;
    .registers 2

    .line 14
    const-class v0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;
    .registers 1

    .line 14
    sget-object v0, Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;->$VALUES:[Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/common/model/GetAdResponse$ResponseType;

    return-object v0
.end method
