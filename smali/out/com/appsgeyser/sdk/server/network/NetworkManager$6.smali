.class Lcom/appsgeyser/sdk/server/network/NetworkManager$6;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$6;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 170
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 171
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 172
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 174
    :cond_15
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "volley request error"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method
