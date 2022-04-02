.class public Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;
.super Ljava/lang/Object;
.source "UrlBarMenuButton.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    }
.end annotation


# instance fields
.field private type:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->type:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    return-void
.end method


# virtual methods
.method public getType()Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->type:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    return-object v0
.end method

.method public setType(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;->type:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    return-void
.end method
