.class public final synthetic Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/rateme/RatingDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;->f$1:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;->f$1:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    invoke-static {v0, v1, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->lambda$null$1(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog;Landroid/view/View;)V

    return-void
.end method
