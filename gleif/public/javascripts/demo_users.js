/**
 © Copyright IBM Corp. 2019, 2019

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

const images = {
	bloomberg: 'data:image/png;base64,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'
};

const demo_users = [
	{
		name: 'Bloomberg Finance L.P.',
		attributes: {
			'LEI': '5299004RLKTW0WSOAM90',
			'Legal_Name': 'Bloomberg Finance L.P.',
			'Street_Address': '731 Lexington Avenue',
			'City': 'New York',
			'Region': 'Country',
			'Postal Code': '10022',
			'Country': 'US',
			portrait: images.bloomberg
		}
	}
];

window.makeid = function (length) {
	let result = '';
	const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	const charactersLength = characters.length;
	for (let i = 0; i < length; i++) {
		result += characters.charAt(Math.floor(Math.random() * charactersLength));
	}
	return result;
};

const default_attributes = {
			'LEI': '5299004RLKTW0WSOAM90',
      'Legal_Name': 'Bloomberg Finance L.P.',
			'Street_Address': '731 Lexington Avenue',
			'City': 'New York',
			'Region': 'Country',
			'Postal_Code': '10022',
			'Country': 'US',
			portrait: images.bloomberg
};
window.default_attributes = default_attributes;


$(document).ready(() => {
	let html = '';
	for (const index in demo_users) {
		const user = demo_users[index];

		html += `<option value="${index}">${user.name}</option>`;
	}
	$('#userTemplate').html(html);
 
 if (document.getElementById('louName')) {
		html = '<option value="" disabled selected hidden>Choose an LOU</option>'+html;
		$('#louName').html(html);
	}


	$('#userTemplateForm').submit((event) => {
		event.preventDefault();

		const index = parseInt($('#userTemplate').val());
		const user_data = demo_users[index];
		console.log(`User data: ${JSON.stringify(user_data)}`);

		for (const attr_name in default_attributes) {
			let value = default_attributes[attr_name];
			if (user_data.attributes[attr_name]) value = user_data.attributes[attr_name];
			$(`input[name="${attr_name}"]`).val(value);
		}
		$('#userPortraitPreview')[0].src = user_data.attributes.portrait;
		$('input[name="email"]').val(user_data.email ? user_data.email : '');
		$('input[name="confirm_password"]').val(user_data.attributes.password ? user_data.attributes.password : default_attributes.password);
		$('#autofillModal').modal('hide');
	});
});