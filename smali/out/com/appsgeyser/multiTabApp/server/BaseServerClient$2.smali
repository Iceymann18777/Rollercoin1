.class Lcom/appsgeyser/multiTabApp/server/BaseServerClient$2;
.super Ljava/lang/Object;
.source "BaseServerClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/server/BaseServerClient;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$2;->this$0:Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2

    return-void
.end method
