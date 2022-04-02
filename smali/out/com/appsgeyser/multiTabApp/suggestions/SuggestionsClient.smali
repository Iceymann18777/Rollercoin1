.class public Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;
.super Lcom/appsgeyser/multiTabApp/server/BaseServerClient;
.source "SuggestionsClient.java"


# instance fields
.field private listener:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->tryGetSuggestsFromXml(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;)Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->listener:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;

    return-object p0
.end method

.method private tryGetSuggestsFromXml(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/suggestions/RemoteSuggestionItem;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 84
    :try_start_4
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;

    invoke-direct {v1}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;-><init>()V

    .line 86
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 88
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsHandler;->getResult()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method public getSuggestionsAsync(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_2b

    const-string v0, ""

    if-ne p1, v0, :cond_7

    goto :goto_2b

    .line 35
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://google.com/complete/search?output=toolbar&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1869f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient$1;-><init>(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setListener(Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsClient;->listener:Lcom/appsgeyser/multiTabApp/suggestions/SuggestionsListener;

    return-void
.end method
