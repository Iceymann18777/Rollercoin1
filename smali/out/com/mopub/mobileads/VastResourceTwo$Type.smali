.class public final enum Lcom/mopub/mobileads/VastResourceTwo$Type;
.super Ljava/lang/Enum;
.source "VastResourceTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastResourceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastResourceTwo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastResourceTwo$Type;

.field public static final enum HTML_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

.field public static final enum IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

.field public static final enum STATIC_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/VastResourceTwo$Type;

    new-instance v1, Lcom/mopub/mobileads/VastResourceTwo$Type;

    const-string v2, "STATIC_RESOURCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResourceTwo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VastResourceTwo$Type;

    const-string v2, "HTML_RESOURCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResourceTwo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VastResourceTwo$Type;

    const-string v2, "IFRAME_RESOURCE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/VastResourceTwo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/VastResourceTwo$Type;->$VALUES:[Lcom/mopub/mobileads/VastResourceTwo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastResourceTwo$Type;
    .registers 2

    const-class v0, Lcom/mopub/mobileads/VastResourceTwo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastResourceTwo$Type;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastResourceTwo$Type;
    .registers 1

    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo$Type;->$VALUES:[Lcom/mopub/mobileads/VastResourceTwo$Type;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastResourceTwo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastResourceTwo$Type;

    return-object v0
.end method
