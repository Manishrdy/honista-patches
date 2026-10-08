.class public LX/Y/b8;
.super Ljava/lang/Object;

.method public final o(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    invoke-static {p1}, LX/LocalSponsoredFilter;->apply(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    move-result-object v0
    return-object v0
.end method

.method public final p(Ljava/net/URI;Ljava/lang/String;LX/Y/e0;)V
    .locals 1
    invoke-static {p1, p2}, LX/LocalSponsoredFilter;->filter(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p3, v0}, LX/Y/e0;->b(Ljava/lang/String;)V
    return-void
.end method

.method public final q(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    invoke-static {p1, p2}, LX/LocalSponsoredFilter;->filter(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public final r(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    invoke-static {p1}, LX/LocalSponsoredFilter;->apply(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    move-result-object v0
    return-object v0
.end method

.method public final s(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    invoke-static {p1}, LX/LocalSponsoredFilter;->apply(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    move-result-object v0
    return-object v0
.end method

.method public final t(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    invoke-static {p1}, LX/LocalSponsoredFilter;->apply(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    move-result-object v0
    return-object v0
.end method
