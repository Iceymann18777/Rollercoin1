.class public final synthetic Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$7L1413UzpnqiJnyyK_f5T_48_NY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$7L1413UzpnqiJnyyK_f5T_48_NY;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFormSubmitted(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$7L1413UzpnqiJnyyK_f5T_48_NY;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->lambda$initRatingDialog$3(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
