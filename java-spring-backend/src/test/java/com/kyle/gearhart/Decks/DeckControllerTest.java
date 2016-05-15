package com.kyle.gearhart.Decks;

import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

public class DeckControllerTest {
	
	@Test
	public void testCreateADeckIsReturnsCreatedStatusCode() throws Exception {
		DeckController deckController = new DeckController();
		MockMvc mockMvc = MockMvcBuilders.standaloneSetup(deckController).build();
		
		
		ResultActions result = mockMvc.perform(post("/decks")
				.contentType(MediaType.APPLICATION_JSON_UTF8_VALUE)
				.content("{\"title\":\"Japanese\"}")
				);
		
		
		result.andExpect(MockMvcResultMatchers.status().isCreated());
	}
	
	@Test
	public void testCreateADeckReturnsPersistedDeckJson() throws Exception {
		String newDeckTitle = "Japanese";
		DeckController deckController = new DeckController();
		MockMvc mockMvc = MockMvcBuilders.standaloneSetup(deckController).build();
		
		
		ResultActions result = mockMvc.perform(post("/decks")
				.contentType(MediaType.APPLICATION_JSON_UTF8_VALUE)
				.content("{\"title\":\""+ newDeckTitle + "\"}")
				);

		
		result.andExpect(jsonPath("$.id", equalTo(1)));
        result.andExpect(jsonPath("$.title", equalTo(newDeckTitle)));
	}
	
}
