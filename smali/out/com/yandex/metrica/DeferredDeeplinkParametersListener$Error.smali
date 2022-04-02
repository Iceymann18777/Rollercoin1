.class public final enum Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/DeferredDeeplinkParametersListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

.field public static final enum NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

.field public static final enum PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;


# instance fields
.field private final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 29
    new-instance v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    const-string v1, "NOT_A_FIRST_LAUNCH"

    const/4 v2, 0x0

    const-string v3, "Deferred deeplink parameters can be requested during first launch only."

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 33
    new-instance v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    const-string v1, "PARSE_ERROR"

    const/4 v3, 0x1

    const-string v4, "Google Play referrer did not contain valid deferred deeplink parameters."

    invoke-direct {v0, v1, v3, v4}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    .line 25
    sget-object v4, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->NOT_A_FIRST_LAUNCH:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->$VALUES:[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
    .registers 2

    .line 25
    const-class v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;
    .registers 1

    .line 25
    sget-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->$VALUES:[Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    invoke-virtual {v0}, [Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    return-object v0
.end method
