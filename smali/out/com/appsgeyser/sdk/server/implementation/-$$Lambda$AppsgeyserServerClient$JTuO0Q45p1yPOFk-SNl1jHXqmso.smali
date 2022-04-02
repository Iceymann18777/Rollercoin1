.class public final synthetic Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;->INSTANCE:Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThresholdFailed(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->lambda$initRatingDialog$0(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V

    return-void
.end method
